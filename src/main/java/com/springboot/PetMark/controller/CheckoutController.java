package com.springboot.PetMark.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.gson.JsonObject;
import com.springboot.PetMark.config.VNPayConfig;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.CardItemAccessories;
import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.entities.OrderrWebDetail;
import com.springboot.PetMark.service.CartItemService;
import com.springboot.PetMark.service.OrderrWebDetailService;
import com.springboot.PetMark.service.OrderrWebService;

import pet.mart.security.CurrentUser;
import pet.mart.security.IsAuthenticated;
import pet.mart.security.UserPrincipal;
import pet.mart.util.DeliveryStatus;
import pet.mart.util.PaymentMethod;
import pet.mart.util.PaymentStatus;
import pet.mart.util.Validator;

@Controller
//@IsAuthenticated
public class CheckoutController {
	@Autowired
	CartItemService cartItemService;

	@Autowired
	OrderrWebService orderWebService;

	@Autowired
	OrderrWebDetailService orderWebDetailService;

//	@Autowired
//    JavaMailSender javaMailSender;

    private String successResult = "Đặt hàng thành công";
    private String successNote = "Cảm ơn bạn đã mua hàng tại TopShoe";

	@PostMapping("/checkout")
	public String checkout(HttpServletRequest req, @CurrentUser UserPrincipal userPrincipal, ModelMap model) throws UnsupportedEncodingException {

		Account user = userPrincipal.getCurrentUser();
		List<CardItemAccessories> cartItems = cartItemService.findByAccount(user);

		OrderrWeb orderWeb = new OrderrWeb();
		orderWeb.setConsignee(req.getParameter("name"));
		orderWeb.setConsigneePhone(req.getParameter("phone"));
		orderWeb.setDeliveryAddress(req.getParameter("address"));
		orderWeb.setAccount(user);

		String paymentMethod = req.getParameter("paymentMethod");
		if (paymentMethod.equalsIgnoreCase(PaymentMethod.COD)) {
			orderWeb.setPaymentMethod(PaymentMethod.COD);

		} else if (paymentMethod.equalsIgnoreCase(PaymentMethod.ATM)) {
			orderWeb.setPaymentMethod(PaymentMethod.ATM);
		}
		orderWebService.save(orderWeb);

		float totalAmount = 0;
		for (CardItemAccessories cartItem : cartItems) {
			OrderrWebDetail orderWebDetail = new OrderrWebDetail();
//			ProductSize productSize = cartItem.getProductSize();
//			long price = productSize.getProduct().getPrice();
			Accessories acc = cartItem.getAccessories();
			float price = acc.getPrice();
			int quantity = cartItem.getAmount();

			orderWebDetail.setOrderrWeb(orderWeb);
//			orderWebDetail.setProductSize(productSize);
			orderWebDetail.setAccessories(acc);
			orderWebDetail.setAmount(quantity);
			orderWebDetail.setTotalAmount(price * quantity);
			orderWebDetailService.save(orderWebDetail);

			totalAmount += price * quantity;
		}
		orderWeb.setTotalAmount(totalAmount);
		orderWeb.setPaymentStatus(PaymentStatus.PENDING_ATM);
		orderWeb.setDeliveryStatus(DeliveryStatus.NOT_APPROVED);
		orderWebService.save(orderWeb);

		if (orderWeb.getPaymentMethod().equalsIgnoreCase(PaymentMethod.COD)) {
			orderWeb.setPaymentStatus(PaymentStatus.UNPAID);

			orderWebService.save(orderWeb);
//	        cartItemService.deleteByAccount(user);
			return "redirect:/order-result/" + orderWeb.getId();
		}

        Map<String, String> vnp_Params = new HashMap<>();
        vnp_Params.put("vnp_Version", "2.0.0");
        vnp_Params.put("vnp_Command", "pay");
        vnp_Params.put("vnp_TmnCode", VNPayConfig.vnp_TmnCode);
        vnp_Params.put("vnp_Amount", String.valueOf(totalAmount*100));
        vnp_Params.put("vnp_CurrCode", "VND");
        vnp_Params.put("vnp_BankCode", "NCB");
        vnp_Params.put("vnp_TxnRef", VNPayConfig.getRandomNumber(8));
        vnp_Params.put("vnp_OrderInfo", String.valueOf(orderWeb.getId()));
        vnp_Params.put("vnp_OrderType", "billpayment");
        vnp_Params.put("vnp_Locale", "vn");
        vnp_Params.put("vnp_ReturnUrl", VNPayConfig.vnp_Returnurl);
        vnp_Params.put("vnp_IpAddr", VNPayConfig.getIpAddress(req));
        vnp_Params.put("vnp_CreateDate", new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));

        //Build data to hash and querystring
        List<String> fieldNames = new ArrayList<String>(vnp_Params.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();
        StringBuilder query = new StringBuilder();
        Iterator<String> itr = fieldNames.iterator();
        while (itr.hasNext()) {
            String fieldName = (String) itr.next();
            String fieldValue = (String) vnp_Params.get(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                //Build hash data
                hashData.append(fieldName);
                hashData.append('=');
                hashData.append(fieldValue);
                //Build query
                query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                query.append('=');
                query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));

                if (itr.hasNext()) {
                    query.append('&');
                    hashData.append('&');
                }
            }
        }
        String queryUrl = query.toString();
        String vnp_SecureHash = VNPayConfig.Sha256(VNPayConfig.vnp_HashSecret + hashData.toString());
        queryUrl += "&vnp_SecureHashType=SHA256&vnp_SecureHash=" + vnp_SecureHash;
        String paymentUrl = VNPayConfig.vnp_PayUrl + "?" + queryUrl;
        JsonObject job = new JsonObject();
        job.addProperty("code", "00");
        job.addProperty("message", "success");
        job.addProperty("data", paymentUrl);

        return "redirect:" + paymentUrl;
	}

	@GetMapping("/order-result/{id}")
	public String getOrderResult(@PathVariable String id, @CurrentUser UserPrincipal userPrincipal, ModelMap model) {

		if(Validator.checkId(id)) {
			OrderrWeb orderWeb = orderWebService.findById(Integer.valueOf(id));
			if (orderWeb.getAccount().getUsername().equals(userPrincipal.getCurrentUser().getUsername())) {

				boolean isSuccess = false;
				String result = "Giao dịch không thành công";
		        String note = "Xin vui lòng kiểm tra lại thông tin thanh toán";
				String paymentStatus = orderWeb.getPaymentStatus();
				String deliveryStatus = orderWeb.getDeliveryStatus();
				String paymentMethod = orderWeb.getPaymentMethod();

		        if ((paymentMethod.equalsIgnoreCase(PaymentMethod.ATM) 
		        		&& paymentStatus.equalsIgnoreCase(PaymentStatus.PAID)
		        		&& deliveryStatus.equalsIgnoreCase(DeliveryStatus.WAITING_FOR_DELIVERY)) || 
		        			(paymentMethod.equalsIgnoreCase(PaymentMethod.COD)
		        				&& paymentStatus.equalsIgnoreCase(PaymentStatus.UNPAID)
		        				&& deliveryStatus.equalsIgnoreCase(DeliveryStatus.NOT_APPROVED))) {

	        		isSuccess = true;
	        		note = successNote;
	        		result = successResult;

		        } else if (!paymentStatus.equalsIgnoreCase(PaymentStatus.CANCELLED) || !deliveryStatus.equalsIgnoreCase(DeliveryStatus.CANCELLED)) {
		        	return "redirect:/my-account";
		        }

//		        !orderWeb.getSentMail() &&
		        if  (orderWeb.getSentMail() != null) {
		        	try {
//			        	SimpleMailMessage msg = new SimpleMailMessage();
//				        msg.setTo(orderWeb.getUser().getEmail());
//				        msg.setSubject("TopShoe - Đơn hàng #TS" + orderWeb.getId());
//				        msg.setText(result + "\n" + note + "\n");
//				        javaMailSender.send(msg);
//				        orderWeb.setSentMail(true);
				        orderWebService.save(orderWeb);

					} catch (Exception e) {
						// TODO: handle exception
						System.out.println(e);
					}
		        }

		        model.addAttribute("note", note);
		        model.addAttribute("result", result);
		        model.addAttribute("orderWeb", orderWeb);
		        model.addAttribute("isSuccess", isSuccess);
				return "shopper/order-result";
			}
		}
		return "redirect:/my-account";
	}

	@GetMapping("/order-atm-result")
	public String getOrderATMResult(HttpServletRequest request, ModelMap model, @CurrentUser UserPrincipal userPrincipal) throws UnsupportedEncodingException {

		int orderWebId = Integer.valueOf(request.getParameter("vnp_OrderInfo"));
		OrderrWeb orderWeb = orderWebService.findById(orderWebId);
		String paymentStatus = orderWeb.getPaymentStatus();
		String deliveryStatus = orderWeb.getDeliveryStatus();

		if (orderWeb.getAccount().getUsername().equals(userPrincipal.getCurrentUser().getUsername())) {
			if (!paymentStatus.equalsIgnoreCase(PaymentStatus.CANCELLED) 
					&& !deliveryStatus.equalsIgnoreCase(DeliveryStatus.CANCELLED)
							&& orderWeb.getPaymentMethod().equalsIgnoreCase(PaymentMethod.ATM)
									&& paymentStatus.equalsIgnoreCase(PaymentStatus.PENDING_ATM)) {

				orderWeb.setPaymentStatus(PaymentStatus.CANCELLED);
        		orderWeb.setDeliveryStatus(DeliveryStatus.CANCELLED);

				Map<String, String> fields = new HashMap<String, String>();
		        for (Enumeration<String> params = request.getParameterNames(); params.hasMoreElements();) {
		            String fieldName = (String) params.nextElement();
		            String fieldValue = request.getParameter(fieldName);
		            if ((fieldValue != null) && (fieldValue.length() > 0)) {
		                fields.put(fieldName, fieldValue);
		            }
		        }

		        String vnp_SecureHash = request.getParameter("vnp_SecureHash");
		        if (fields.containsKey("vnp_SecureHashType")) {
		            fields.remove("vnp_SecureHashType");
		        }
		        if (fields.containsKey("vnp_SecureHash")) {
		            fields.remove("vnp_SecureHash");
		        }
		        String signValue = VNPayConfig.hashAllFields(fields);

		        if (signValue.equals(vnp_SecureHash)) {
		        	if ("00".equals(request.getParameter("vnp_ResponseCode"))) {

		        		orderWeb.setPaymentStatus(PaymentStatus.PAID);
		        		orderWeb.setDeliveryStatus(DeliveryStatus.WAITING_FOR_DELIVERY);

//		        		cartItemService.deleteByUser(userPrincipal.getCurrentUser());
		        	}
		        }
    	        orderWebService.save(orderWeb);
			}
			return "redirect:/order-result/" + orderWeb.getId();
		}
		return "redirect:/my-account";
	}

	@GetMapping("demo-vnpay")
	public String demoVNP() {
		return "shopper/vnpay-demo";
	}

}
