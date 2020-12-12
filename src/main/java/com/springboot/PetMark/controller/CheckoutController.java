package com.springboot.PetMark.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.Principal;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.poi.ss.formula.functions.Odd;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
import com.springboot.PetMark.config.MailConfig;
import com.springboot.PetMark.config.VNPayConfig;
import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.CardItemAccessories;
import com.springboot.PetMark.entities.ColorAccessories;
import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.entities.OrderrWebDetail;
import com.springboot.PetMark.entities.SizeAccessories;
import com.springboot.PetMark.service.AccessoriesService;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.CartItemService;
import com.springboot.PetMark.service.ColorAccessoriesService;
import com.springboot.PetMark.service.OrderrWebDetailService;
import com.springboot.PetMark.service.OrderrWebService;
import com.springboot.PetMark.service.SizeService;

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
	AccessoriesService accessoriesService;
	@Autowired
	OrderrWebService orderWebService;
	@Autowired
	AccountService accountService;
	@Autowired
	OrderrWebDetailService orderWebDetailService;
	@Autowired
	ColorAccessoriesService colorAccessoriesService;
	@Autowired
	SizeService sizeService;
	
	private String successResult = "Đặt hàng thành công";
	private String successNote = "Cảm ơn bạn đã mua hàng tại TopShoe";

	@RequestMapping("/show-all-order")
	public ModelAndView showAllOrder(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/all-order");
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		int slCard = 0;
		if(cartItemService.countByAccount(account)!=0) {
		slCard = cartItemService.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		model.addObject("account", account);
		List<OrderrWeb> list = orderWebService.findByAccount(account);
		model.addObject("list", list);
		String title = "Tất cả đơn hàng";
		model.addObject("title", title);
		String isEmpty = "1";
		if (list.size() == 0) {
			isEmpty = "0";
		}
		model.addObject("isEmpty", isEmpty);
		return model;
	}

	@RequestMapping("/show-waiting-order")
	public ModelAndView showWaitingOrder(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/all-order");
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addObject("account", account);
		int slCard = 0;
		if(cartItemService.countByAccount(account)!=0) {
		slCard = cartItemService.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		List<OrderrWeb> list = orderWebService.findBySttUser(DeliveryStatus.NOT_APPROVED, account);
		model.addObject("list", list);
		String isEmpty = "1";
		String title = "Đơn hàng chờ xác nhận";
		model.addObject("title", title);
		if (list.size() == 0) {
			isEmpty = "0";
		}
		model.addObject("isEmpty", isEmpty);
		return model;
	}

	@RequestMapping("/show-waiting-delevery")
	public ModelAndView showWaitingDelevery(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/all-order");
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addObject("account", account);
		int slCard = 0;
		if(cartItemService.countByAccount(account)!=0) {
		slCard = cartItemService.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		List<OrderrWeb> list = orderWebService.findBySttUser(DeliveryStatus.WAITING_FOR_DELIVERY, account);
		model.addObject("list", list);
		String title = "Đơn hàng chờ giao";
		model.addObject("title", title);
		String isEmpty = "1";
		if (list.size() == 0) {
			isEmpty = "0";
		}
		model.addObject("isEmpty", isEmpty);
		return model;
	}

	@RequestMapping("/show-delevering")
	public ModelAndView showDelevering(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/all-order");
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addObject("account", account);
		int slCard = 0;
		if(cartItemService.countByAccount(account)!=0) {
		slCard = cartItemService.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		List<OrderrWeb> list = orderWebService.findBySttUser(DeliveryStatus.DELIVERING, account);
		model.addObject("list", list);
		String title = "Đơn hàng đang giao";
		model.addObject("title", title);
		String isEmpty = "1";
		if (list.size() == 0) {
			isEmpty = "0";
		}
		model.addObject("isEmpty", isEmpty);
		return model;
	}

	@RequestMapping("/show-delivered")
	public ModelAndView showDelivered(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/all-order");
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addObject("account", account);
		List<OrderrWeb> list = orderWebService.findBySttUser(DeliveryStatus.SUCCESSFUL, account);
		model.addObject("list", list);
		int slCard = 0;
		if(cartItemService.countByAccount(account)!=0) {
		slCard = cartItemService.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		String title = "Đơn hàng đã giao";
		model.addObject("title", title);
		String isEmpty = "1";
		if (list.size() == 0) {
			isEmpty = "0";
		}
		model.addObject("isEmpty", isEmpty);
		return model;
	}

	@RequestMapping("/show-cancel-order")
	public ModelAndView showCancelOrder(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/all-order");
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addObject("account", account);
		int slCard = 0;
		if(cartItemService.countByAccount(account)!=0) {
		slCard = cartItemService.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		List<OrderrWeb> list = orderWebService.findBySttUser(DeliveryStatus.CANCELLED, account);
		model.addObject("list", list);
		String isEmpty = "1";
		String title = "Đơn hàng đã huỷ";
		model.addObject("title", title);
		if (list.size() == 0) {
			isEmpty = "0";
		}
		model.addObject("isEmpty", isEmpty);
		return model;
	}

	@RequestMapping("/showcheck-out")
	public ModelAndView showCheckOut(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/check-out");
		User loginUser = (User) ((Authentication) principal).getPrincipal();
		String username = loginUser.getUsername();
		Account account = accountService.findById(username);
		int slCard = 0;
		if(cartItemService.countByAccount(account)!=0) {
		slCard = cartItemService.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		model.addObject("account", account);
		List<CardItemAccessories> card = cartItemService.findByAccount(account);
		model.addObject("card", card);
		float thanhTien = 0;

		for (CardItemAccessories cardItem : card) {
			thanhTien += cardItem.getAmount() * cardItem.getAccessories().getPrice();
			model.addObject("thanhTien", thanhTien);
		}
		return model;
	}

//	@PostMapping("/checkout")
	@RequestMapping("/checkout")
	public String checkout(HttpServletRequest req, Principal principal, ModelMap model)
			throws UnsupportedEncodingException {
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		String username = loginedUser.getUsername();
		Account user = accountService.findById(username);
//		System.out.println("user check-out: "+user);
		List<CardItemAccessories> cartItems = cartItemService.findByAccount(user);

		OrderrWeb orderWeb = new OrderrWeb();
		orderWeb.setConsignee(req.getParameter("name"));
		orderWeb.setConsigneePhone(req.getParameter("phone"));
		orderWeb.setDeliveryAddress(req.getParameter("address"));
		orderWeb.setAccount(user);
		orderWeb.setPlace(0);
		orderWeb.setSentMail(user.getEmail());
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		orderWeb.setCreatedAt(date);
		orderWeb.setDeliveryStatus(DeliveryStatus.NOT_APPROVED);
		String paymentMethod = req.getParameter("payment-methods");
		if (paymentMethod.equals(PaymentMethod.COD)) {
			orderWeb.setPaymentMethod(PaymentMethod.COD);
			orderWeb.setPaymentStatus(PaymentStatus.UNPAID);

		} else if (paymentMethod.equals(PaymentMethod.ATM)) {
			orderWeb.setPaymentMethod(PaymentMethod.ATM);
			orderWeb.setPaymentStatus(PaymentStatus.PENDING_ATM);
		}
		orderWebService.save(orderWeb);

		float totalAmount = 0;
		for (CardItemAccessories cartItem : cartItems) {
			OrderrWebDetail orderWebDetail = new OrderrWebDetail();
			SizeAccessories size = cartItem.getSize();
			ColorAccessories color = cartItem.getColor();
			Accessories acc = cartItem.getAccessories();
			float price = acc.getPrice();
			int quantity = cartItem.getAmount();

			orderWebDetail.setOrderrWeb(orderWeb);
			orderWebDetail.setColor(color);
			orderWebDetail.setSize(size);
			orderWebDetail.setAccessories(acc);
			orderWebDetail.setAmount(quantity);
			orderWebDetail.setTotalAmount(price * quantity);
			orderWebDetail.setCreatedAt(date);
			orderWebDetailService.save(orderWebDetail);

			totalAmount += price * quantity;
		}
		orderWeb.setTotalAmount(totalAmount);
		orderWebService.save(orderWeb);

		if (orderWeb.getPaymentMethod().equals(PaymentMethod.COD)) {
			orderWeb.setPaymentStatus(PaymentStatus.UNPAID);
			orderWebService.save(orderWeb);
			cartItemService.deleteByAccount(user);
			return "redirect:/order-result/" + orderWeb.getId();
		}
		cartItemService.deleteByAccount(user);

		String dinhDang = "#";
		DecimalFormat format = new DecimalFormat(dinhDang);
		String tienVNP = format.format(totalAmount * 100);
		Map<String, String> vnp_Params = new HashMap<>();
		vnp_Params.put("vnp_Version", "2.0.0");
		vnp_Params.put("vnp_Command", "pay");
		vnp_Params.put("vnp_TmnCode", VNPayConfig.vnp_TmnCode);
		vnp_Params.put("vnp_Amount", tienVNP);
		vnp_Params.put("vnp_CurrCode", "VND");
		vnp_Params.put("vnp_BankCode", "NCB");
		vnp_Params.put("vnp_TxnRef", VNPayConfig.getRandomNumber(8));
		vnp_Params.put("vnp_OrderInfo", String.valueOf(orderWeb.getId()));
		vnp_Params.put("vnp_OrderType", "billpayment");
		vnp_Params.put("vnp_Locale", "vn");
		vnp_Params.put("vnp_ReturnUrl", VNPayConfig.vnp_Returnurl);
		vnp_Params.put("vnp_IpAddr", VNPayConfig.getIpAddress(req));
		System.out.println("reques: " + VNPayConfig.getIpAddress(req));
		vnp_Params.put("vnp_CreateDate", new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));

		// Build data to hash and querystring
		List<String> fieldNames = new ArrayList<String>(vnp_Params.keySet());
		Collections.sort(fieldNames);
		StringBuilder hashData = new StringBuilder();
		StringBuilder query = new StringBuilder();
		Iterator<String> itr = fieldNames.iterator();
		while (itr.hasNext()) {
			String fieldName = (String) itr.next();
			String fieldValue = (String) vnp_Params.get(fieldName);
			if ((fieldValue != null) && (fieldValue.length() > 0)) {
				// Build hash data
				hashData.append(fieldName);
				hashData.append('=');
				hashData.append(fieldValue);
				// Build query
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

	@RequestMapping("/show-detail/{id}")
	public ModelAndView showDetail(@PathVariable String id, Principal principal) {
		ModelAndView model = new ModelAndView();
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(loginedUser.getUsername());
		model.setViewName("client2/order-detail");
		model.addObject("account", account);
		int slCard = 0;
		if(cartItemService.countByAccount(account)!=0) {
		slCard = cartItemService.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		OrderrWeb orderWeb = orderWebService.findById(Integer.parseInt(id));
		model.addObject("orderweb", orderWeb);
		List<OrderrWebDetail> order = orderWebDetailService.findOrderrWeb(orderWeb);
		model.addObject("order", order);
		return model;
	}

	@GetMapping("/order-result/{id}")
	public String getOrderResult(@PathVariable String id, Principal principal, ModelMap model) {
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		if (Validator.checkId(id)) {
			OrderrWeb orderWeb = orderWebService.findById(Integer.valueOf(id));
			if (orderWeb.getAccount().getUsername().equals(loginedUser.getUsername())) {

				boolean isSuccess = false;
				String result = "Giao dịch không thành công";
				String note = "Xin vui lòng kiểm tra lại thông tin thanh toán";
				String paymentStatus = orderWeb.getPaymentStatus();
				String deliveryStatus = orderWeb.getDeliveryStatus();
				String paymentMethod = orderWeb.getPaymentMethod();

				if ((paymentMethod.equalsIgnoreCase(PaymentMethod.ATM)
						&& paymentStatus.equalsIgnoreCase(PaymentStatus.PAID)
						&& deliveryStatus.equalsIgnoreCase(DeliveryStatus.WAITING_FOR_DELIVERY))
						|| (paymentMethod.equalsIgnoreCase(PaymentMethod.COD)
								&& paymentStatus.equalsIgnoreCase(PaymentStatus.UNPAID)
								&& deliveryStatus.equalsIgnoreCase(DeliveryStatus.NOT_APPROVED))) {

					isSuccess = true;
					note = successNote;
					result = successResult;

				} else if (!paymentStatus.equalsIgnoreCase(PaymentStatus.CANCELLED)
						|| !deliveryStatus.equalsIgnoreCase(DeliveryStatus.CANCELLED)) {
					return "redirect:/show-account";
				}

				if (orderWeb.getSentMail() != null) {
					Properties props = new Properties();
					props.put("mail.smtp.auth", "true");
					props.put("mail.smtp.starttls.enable", "true");
					props.put("mail.smtp.host", MailConfig.HOST_NAME);
					props.put("mail.smtp.port", MailConfig.TSL_PORT);

					// get Session
					Session session = Session.getInstance(props, new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(MailConfig.APP_EMAIL, MailConfig.APP_PASSWORD);
						}
					});
					try {
						MimeMessage message = new MimeMessage(session);
						message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(orderWeb.getSentMail()));
						message.setSubject("Thông báo đặt hàng từ PetMark");
						message.setText("Mã đơn hàng của bạn: " + orderWeb.getId() + "\n"
								+ "Bạn có thể truy cập vào trang web của chúng tôi để theo dõi đơn hàng." + "\n"
								+ "Xin chân thành cảm ơn.");
						Transport.send(message);
						System.out.println("thông báo mail đặt hàng thành công");
					} catch (Exception e) {
						// TODO: handle exception
						System.out.println(e);
					}
				}

				model.addAttribute("note", note);
				model.addAttribute("result", result);
				model.addAttribute("orderweb", orderWeb);
				model.addAttribute("isSuccess", isSuccess);
				return "redirect:/show-detail/" + id;
			}
		}
		return "redirect:/show-account";
	}

	@GetMapping("/order-atm-result")
	public String getOrderATMResult(HttpServletRequest request, ModelMap model, Principal principal)
			throws UnsupportedEncodingException {

		int orderWebId = Integer.valueOf(request.getParameter("vnp_OrderInfo"));
		OrderrWeb orderWeb = orderWebService.findById(orderWebId);
		String paymentStatus = orderWeb.getPaymentStatus();
		String deliveryStatus = orderWeb.getDeliveryStatus();
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		String username = loginedUser.getUsername();
		if (orderWeb.getAccount().getUsername().equals(username)) {
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
						List<OrderrWebDetail> orderDetail = orderWeb.getDetail();
						for (OrderrWebDetail detail : orderDetail) {
							Accessories acc = detail.getAccessories();
							acc.setAmount(acc.getAmount() - detail.getAmount());
							accessoriesService.addAccessories(acc);
						}
//		        		cartItemService.deleteByUser(userPrincipal.getCurrentUser());
					}
				}
				orderWebService.save(orderWeb);
			}
			return "redirect:/order-result/" + orderWeb.getId();
		}
		return "redirect:/show-account";
	}

	@GetMapping("demo-vnpay")
	public String demoVNP() {
		return "client2/vnpay-demo";
	}

	@RequestMapping("/show-buy-now/{id}")
	public ModelAndView buyNow(@PathVariable String id, HttpServletRequest req, Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/buy-now");
		User loginUser = (User) ((Authentication) principal).getPrincipal();
		String username = loginUser.getUsername();
		Account account = accountService.findById(username);
		model.addObject("account", account);
		Accessories acc = accessoriesService.findById(Integer.parseInt(id));
		model.addObject("acc", acc);
		int slCard = 0;
		if(cartItemService.countByAccount(account)!=0) {
		slCard = cartItemService.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		String mau = req.getParameter("colors");
		model.addObject("color", mau);
		String sizes = req.getParameter("size");
		model.addObject("size", sizes);
		String soLuong = req.getParameter("soLuong");
		int amount = Integer.parseInt(soLuong);
		float thanhTien = acc.getPrice() * amount;
		model.addObject("amount", amount);
		model.addObject("thanhTien", thanhTien);
		return model;
	}

	@RequestMapping("/buy")
	public String buy(HttpServletRequest req, Principal principal, ModelMap model) throws UnsupportedEncodingException {
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		String username = loginedUser.getUsername();
		Account user = accountService.findById(username);
		int slCard = 0;
		if(cartItemService.countByAccount(user)!=0) {
		slCard = cartItemService.countByAccount(user);
		}
		model.addAttribute("slCard", slCard);
		OrderrWeb orderWeb = new OrderrWeb();
		orderWeb.setConsignee(req.getParameter("name"));
		orderWeb.setConsigneePhone(req.getParameter("phone"));
		orderWeb.setDeliveryAddress(req.getParameter("address"));
		orderWeb.setAccount(user);
		orderWeb.setPlace(0);
		orderWeb.setSentMail(user.getEmail());
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		orderWeb.setCreatedAt(date);
		orderWeb.setDeliveryStatus(DeliveryStatus.NOT_APPROVED);
		String paymentMethod = req.getParameter("payment-methods");
		if (paymentMethod.equals(PaymentMethod.COD)) {
			orderWeb.setPaymentMethod(PaymentMethod.COD);
			orderWeb.setPaymentStatus(PaymentStatus.UNPAID);

		} else if (paymentMethod.equals(PaymentMethod.ATM)) {
			orderWeb.setPaymentMethod(PaymentMethod.ATM);
			orderWeb.setPaymentStatus(PaymentStatus.PENDING_ATM);
		}
		orderWebService.save(orderWeb);

		OrderrWebDetail orderWebDetail = new OrderrWebDetail();
		String mau = req.getParameter("colors");
		ColorAccessories color = colorAccessoriesService.findById(Integer.parseInt(mau));
		String sizes = req.getParameter("size");
		SizeAccessories size = sizeService.findById(Integer.parseInt(sizes));
		String id = req.getParameter("idacc");
		Accessories acc = accessoriesService.findById(Integer.parseInt(id));
		float price = acc.getPrice();
		int quantity = Integer.parseInt(req.getParameter("soLuong"));
		float totalAmount = price * quantity;
		orderWebDetail.setOrderrWeb(orderWeb);
		orderWebDetail.setColor(color);
		orderWebDetail.setSize(size);
		orderWebDetail.setAccessories(acc);
		orderWebDetail.setAmount(quantity);
		orderWebDetail.setTotalAmount(price * quantity);
		orderWebDetail.setCreatedAt(date);
		orderWebDetailService.save(orderWebDetail);

		orderWeb.setTotalAmount(totalAmount);
		orderWebService.save(orderWeb);

		if (orderWeb.getPaymentMethod().equals(PaymentMethod.COD)) {
			orderWeb.setPaymentStatus(PaymentStatus.UNPAID);
			orderWebService.save(orderWeb);
			return "redirect:/order-result/" + orderWeb.getId();
		}

		String dinhDang = "#";
		DecimalFormat format = new DecimalFormat(dinhDang);
		String tienVNP = format.format(totalAmount * 100);
		Map<String, String> vnp_Params = new HashMap<>();
		vnp_Params.put("vnp_Version", "2.0.0");
		vnp_Params.put("vnp_Command", "pay");
		vnp_Params.put("vnp_TmnCode", VNPayConfig.vnp_TmnCode);
		vnp_Params.put("vnp_Amount", tienVNP);
		vnp_Params.put("vnp_CurrCode", "VND");
		vnp_Params.put("vnp_BankCode", "NCB");
		vnp_Params.put("vnp_TxnRef", VNPayConfig.getRandomNumber(8));
		vnp_Params.put("vnp_OrderInfo", String.valueOf(orderWeb.getId()));
		vnp_Params.put("vnp_OrderType", "billpayment");
		vnp_Params.put("vnp_Locale", "vn");
		vnp_Params.put("vnp_ReturnUrl", VNPayConfig.vnp_Returnurl);
		vnp_Params.put("vnp_IpAddr", VNPayConfig.getIpAddress(req));
		System.out.println("reques: " + VNPayConfig.getIpAddress(req));
		vnp_Params.put("vnp_CreateDate", new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));

		// Build data to hash and querystring
		List<String> fieldNames = new ArrayList<String>(vnp_Params.keySet());
		Collections.sort(fieldNames);
		StringBuilder hashData = new StringBuilder();
		StringBuilder query = new StringBuilder();
		Iterator<String> itr = fieldNames.iterator();
		while (itr.hasNext()) {
			String fieldName = (String) itr.next();
			String fieldValue = (String) vnp_Params.get(fieldName);
			if ((fieldValue != null) && (fieldValue.length() > 0)) {
				// Build hash data
				hashData.append(fieldName);
				hashData.append('=');
				hashData.append(fieldValue);
				// Build query
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
	
	@RequestMapping(value ="buy-no-sign-in/{id}",method = RequestMethod.POST )
	public ModelAndView buyNoSignIn(HttpServletRequest req, @PathVariable int id) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/buy-no-sign-in");
		Accessories acc = accessoriesService.findById(id);
		model.addObject("acc", acc);
		String mau = req.getParameter("colors");
		model.addObject("color", mau);
		String sizes = req.getParameter("size");
		model.addObject("size", sizes);
		String soLuong = req.getParameter("soLuong");
		int amount = Integer.parseInt(soLuong);
		float thanhTien = acc.getPrice() * amount;
		model.addObject("amount", amount);
		model.addObject("thanhTien", thanhTien);
		model.addObject("name", req.getParameter("ten"));
		model.addObject("phone", req.getParameter("sdt"));
		model.addObject("address", req.getParameter("address"));
		return model;
	}
	
	
	// chưa xong
	// thanh toán mua hàng không đăng nhập
	@RequestMapping("/buy-no-signin")
	public String buyNo(HttpServletRequest req, ModelMap model) throws UnsupportedEncodingException {
		Account user = accountService.findById("customer");
		OrderrWeb orderWeb = new OrderrWeb();
		orderWeb.setConsignee(req.getParameter("name"));
		orderWeb.setConsigneePhone(req.getParameter("phone"));
		orderWeb.setDeliveryAddress(req.getParameter("address"));
		orderWeb.setAccount(user);
		orderWeb.setPlace(0);
		orderWeb.setSentMail(user.getEmail());
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		orderWeb.setCreatedAt(date);
		orderWeb.setDeliveryStatus(DeliveryStatus.NOT_APPROVED);
		String paymentMethod = req.getParameter("payment-methods");
		if (paymentMethod.equals(PaymentMethod.COD)) {
			orderWeb.setPaymentMethod(PaymentMethod.COD);
			orderWeb.setPaymentStatus(PaymentStatus.UNPAID);

		} else if (paymentMethod.equals(PaymentMethod.ATM)) {
			orderWeb.setPaymentMethod(PaymentMethod.ATM);
			orderWeb.setPaymentStatus(PaymentStatus.PENDING_ATM);
		}
		orderWebService.save(orderWeb);

		OrderrWebDetail orderWebDetail = new OrderrWebDetail();
		String mau = req.getParameter("colors");
		ColorAccessories color = colorAccessoriesService.findById(Integer.parseInt(mau));
		String sizes = req.getParameter("size");
		SizeAccessories size = sizeService.findById(Integer.parseInt(sizes));
		String id = req.getParameter("idacc");
		Accessories acc = accessoriesService.findById(Integer.parseInt(id));
		float price = acc.getPrice();
		int quantity = Integer.parseInt(req.getParameter("soLuong"));
		float totalAmount = price * quantity;
		orderWebDetail.setOrderrWeb(orderWeb);
		orderWebDetail.setColor(color);
		orderWebDetail.setSize(size);
		orderWebDetail.setAccessories(acc);
		orderWebDetail.setAmount(quantity);
		orderWebDetail.setTotalAmount(price * quantity);
		orderWebDetail.setCreatedAt(date);
		orderWebDetailService.save(orderWebDetail);

		orderWeb.setTotalAmount(totalAmount);
		orderWebService.save(orderWeb);

		if (orderWeb.getPaymentMethod().equals(PaymentMethod.COD)) {
			orderWeb.setPaymentStatus(PaymentStatus.UNPAID);
			orderWebService.save(orderWeb);
			return "redirect:/index";
		}

		String dinhDang = "#";
		DecimalFormat format = new DecimalFormat(dinhDang);
		String tienVNP = format.format(totalAmount * 100);
		Map<String, String> vnp_Params = new HashMap<>();
		vnp_Params.put("vnp_Version", "2.0.0");
		vnp_Params.put("vnp_Command", "pay");
		vnp_Params.put("vnp_TmnCode", VNPayConfig.vnp_TmnCode);
		vnp_Params.put("vnp_Amount", tienVNP);
		vnp_Params.put("vnp_CurrCode", "VND");
		vnp_Params.put("vnp_BankCode", "NCB");
		vnp_Params.put("vnp_TxnRef", VNPayConfig.getRandomNumber(8));
		vnp_Params.put("vnp_OrderInfo", String.valueOf(orderWeb.getId()));
		vnp_Params.put("vnp_OrderType", "billpayment");
		vnp_Params.put("vnp_Locale", "vn");
//		cần sửa
		vnp_Params.put("vnp_ReturnUrl", "http://localhost:8080/petmart/order-atm");
		vnp_Params.put("vnp_IpAddr", VNPayConfig.getIpAddress(req));
		System.out.println("reques: " + VNPayConfig.getIpAddress(req));
		vnp_Params.put("vnp_CreateDate", new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));

		// Build data to hash and querystring
		List<String> fieldNames = new ArrayList<String>(vnp_Params.keySet());
		Collections.sort(fieldNames);
		StringBuilder hashData = new StringBuilder();
		StringBuilder query = new StringBuilder();
		Iterator<String> itr = fieldNames.iterator();
		while (itr.hasNext()) {
			String fieldName = (String) itr.next();
			String fieldValue = (String) vnp_Params.get(fieldName);
			if ((fieldValue != null) && (fieldValue.length() > 0)) {
				// Build hash data
				hashData.append(fieldName);
				hashData.append('=');
				hashData.append(fieldValue);
				// Build query
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
	@GetMapping("/order-atm")
	public ModelAndView getOrderATM(HttpServletRequest request)
			throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		int orderWebId = Integer.valueOf(request.getParameter("vnp_OrderInfo"));
		OrderrWeb orderWeb = orderWebService.findById(orderWebId);
		String paymentStatus = orderWeb.getPaymentStatus();
		String deliveryStatus = orderWeb.getDeliveryStatus();
		String username = "customer";
		String result = "Thất bại";
		if (orderWeb.getAccount().getUsername().equals(username)) {
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
						List<OrderrWebDetail> orderDetail = orderWeb.getDetail();
						for (OrderrWebDetail detail : orderDetail) {
							Accessories acc = detail.getAccessories();
							acc.setAmount(acc.getAmount() - detail.getAmount());
							accessoriesService.addAccessories(acc);
						}
						result = "Thành công";
					}
				}
				orderWebService.save(orderWeb);
			}
//			return model;
		}
		model.addObject("atm", result);
		model.setViewName("redirect:/index");
		return model;
	}

}
