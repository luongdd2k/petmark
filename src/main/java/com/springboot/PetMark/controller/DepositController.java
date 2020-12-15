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
import javax.servlet.http.HttpSession;

import org.apache.xmlbeans.impl.xb.xsdschema.Public;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
import com.springboot.PetMark.config.MailConfig;
import com.springboot.PetMark.config.VNPayConfig;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.ColorPet;
import com.springboot.PetMark.entities.Deposit;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.CartItemService;
import com.springboot.PetMark.service.ColorPetService;
import com.springboot.PetMark.service.DepositService;
import com.springboot.PetMark.service.PetService;
import com.springboot.PetMark.service.QuanHuyenService;
import com.springboot.PetMark.service.TinhThanhPhoService;
import com.springboot.PetMark.service.XaPhuongThiTranService;

import pet.mart.util.DepositStatus;


@Controller
public class DepositController {
	@Autowired
	DepositService depositService;
	@Autowired
	AccountService accountService;
	@Autowired
	ColorPetService colorPetService;
	@Autowired
	PetService petService;
	@Autowired
	CartItemService cardSv;
	@Autowired
	TinhThanhPhoService tpService;
	@Autowired
	QuanHuyenService qhService;
	@Autowired
	XaPhuongThiTranService xaService;
	
	@RequestMapping("/show-cancel-deposit")
	public ModelAndView showCancelDeposit(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/cancel-deposit");
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(loginedUser.getUsername());
		List<Deposit> list = depositService.findByAccountStt(account, DepositStatus.CANCELLED);
		int slCard = 0;
		if(cardSv.countByAccount(account)!=0) {
		slCard = cardSv.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		model.addObject("list",list);
		model.addObject("account", account);
		return model;
	}
	@RequestMapping("/show-deposit")
	public ModelAndView showDesposit(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/deposit");
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(loginedUser.getUsername());
		List<Deposit> list = depositService.findByAccountStt(account, DepositStatus.DEPOSITED);
		int slCard = 0;
		if(cardSv.countByAccount(account)!=0) {
		slCard = cardSv.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		model.addObject("list",list);
		model.addObject("account", account);
		return model;
	}
	
	@RequestMapping("/deposit/{id}")
	public String addDeposit(@PathVariable String id,Principal principal, HttpServletRequest req) throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		HttpSession session = req.getSession();
		String username = (String) session.getAttribute("username");
		Account account = accountService.findById(username);
		model.addObject("account", account);
		Pet pet = petService.findById(Integer.parseInt(id));
		String mau = req.getParameter("colors");
		int soLuong = Integer.parseInt(req.getParameter("soLuong"));
		ColorPet color = colorPetService.findById(Integer.parseInt(mau));
		model.setViewName("client2/vnpay-demo");
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		float totalAmount = pet.getDeposit()*soLuong;
		String stt = DepositStatus.CANCELLED;
		Deposit deposit = new Deposit(pet, account,color, date, soLuong, totalAmount, stt);
		depositService.add(deposit);
		model.addObject("total",totalAmount);
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
		vnp_Params.put("vnp_OrderInfo", String.valueOf(deposit.getId()));
		vnp_Params.put("vnp_OrderType", "billpayment");
		vnp_Params.put("vnp_Locale", "vn");
		vnp_Params.put("vnp_ReturnUrl", "http://localhost:8080/petmart/deposit-atm-result");
		vnp_Params.put("vnp_IpAddr", VNPayConfig.getIpAddress(req));
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
	@GetMapping("/deposit-atm-result")
	public String getDepositATMResult(HttpServletRequest request, ModelMap model, Principal principal)
			throws UnsupportedEncodingException {

		int id = Integer.valueOf(request.getParameter("vnp_OrderInfo"));
		Deposit deposit = depositService.findById(id);
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		String username = loginedUser.getUsername();
		if (deposit.getAccount().getUsername().equals(username)) {
			if (deposit.getStatus().equals(DepositStatus.CANCELLED)) {
				
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

						deposit.setStatus(DepositStatus.DEPOSITED);
					}
				}
				depositService.add(deposit);
			}
			return "redirect:/show-deposit" ;
		}
		return "redirect:/show-cancel-deposit";
	}
	
	@RequestMapping("/deposit-no-sign/{id}")
	public String addDepositNoSign(@PathVariable String id,Principal principal, HttpServletRequest req) throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		HttpSession session = req.getSession();
		Account account = accountService.findById("customer");
		Pet pet = petService.findById(Integer.parseInt(id));
		String mau = req.getParameter("colors");
		int soLuong = Integer.parseInt(req.getParameter("soLuong"));
		ColorPet color = colorPetService.findById(Integer.parseInt(mau));
		model.setViewName("client2/vnpay-demo");
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		float totalAmount = pet.getDeposit()*soLuong;
		String stt = DepositStatus.CANCELLED;
		String address = req.getParameter("address") + " - " + xaService.findById(req.getParameter("xaid")).getName()
				+ " - " + qhService.findById(req.getParameter("maqh")).getName() + " - "
				+ tpService.findById(req.getParameter("matp")).getName();
		account.setAddress(address);
		account.setFullName(req.getParameter("ten"));
		account.setEmail(req.getParameter("email"));
		account.setPhone(req.getParameter("sdt"));
		Deposit deposit = new Deposit(pet, account,color, date, soLuong, totalAmount, stt);
		depositService.add(deposit);
		model.addObject("total",totalAmount);
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
		vnp_Params.put("vnp_OrderInfo", String.valueOf(deposit.getId()));
		vnp_Params.put("vnp_OrderType", "billpayment");
		vnp_Params.put("vnp_Locale", "vn");
		vnp_Params.put("vnp_ReturnUrl", "http://localhost:8080/petmart/deposit-atm");
		vnp_Params.put("vnp_IpAddr", VNPayConfig.getIpAddress(req));
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
	@GetMapping("/deposit-atm")
	public ModelAndView getDepositATM(HttpServletRequest request)
			throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView();
		int id = Integer.valueOf(request.getParameter("vnp_OrderInfo"));
		Deposit deposit = depositService.findById(id);
		String username = "customer";
		String result="Thất bại";
		if (deposit.getAccount().getUsername().equals(username)) {
			if (deposit.getStatus().equals(DepositStatus.CANCELLED)) {
				
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
						
						deposit.setStatus(DepositStatus.DEPOSITED);
						result = "Thành công";
						if (deposit.getAccount().getEmail() != null) {
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
								message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(deposit.getAccount().getEmail()));
								message.setSubject("Thông báo đặt cọc thú cưng từ PetMark");
								message.setText("Mã đơn đặt cọc của bạn: " + deposit.getId() + "\n"
										+"Số tiền đã đặt cọc: "+deposit.getTotalAmount()+" VND" +"\n"
										+ "Khi đến cửa hàng nhận thú và thanh toán vui lòng mở mail để cửa hàng xác nhận đơn cọc." + "\n"
										+ "Xin chân thành cảm ơn.");
								Transport.send(message);
								System.out.println("Thông báo mail đặt hàng thành công!");
							} catch (Exception e) {
								// TODO: handle exception
								System.out.println(e);
							}
						}
					}
				}
				depositService.add(deposit);
			}
			
		}
		model.addObject("atm", result);
		model.setViewName("redirect:/index");
		return model;
	}
}
