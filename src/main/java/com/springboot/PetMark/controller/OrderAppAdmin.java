//package com.springboot.PetMark.controller;
//
//import java.security.Principal;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.springboot.PetMark.entities.Account;
//import com.springboot.PetMark.entities.OrderrApp;
//import com.springboot.PetMark.entities.OrderrAppDetail;
//import com.springboot.PetMark.entities.OrderrWeb;
//import com.springboot.PetMark.entities.OrderrWebDetail;
//import com.springboot.PetMark.service.AccessoriesService;
//import com.springboot.PetMark.service.AccountService;
//import com.springboot.PetMark.service.OrderAppDetailService;
//import com.springboot.PetMark.service.OrderAppService;
//
//import pet.mart.util.DeliveryStatus;
//import pet.mart.util.PaymentStatus;
//
//@Controller
//
//@RequestMapping("admin/order-app")
//public class OrderAppAdmin {
//	@Autowired
//	AccessoriesService productService;
//	@Autowired
//	AccountService accountService;
//	@Autowired
//	OrderAppService service;
//	@Autowired
//	OrderAppDetailService detailSv;
//	@RequestMapping()
//	public String showOrders(ModelMap model, HttpServletRequest request, Principal principal) {
//		HttpSession session = request.getSession();
//		List<OrderrApp> list = service.findAll();
//		model.addAttribute("list", list);
//		User logginedUser = (User) ((Authentication) principal).getPrincipal();
//		Account account = accountService.findById(logginedUser.getUsername());
//		model.addAttribute("account", account);
//		return "pages/order/order-manager-app";
//	}
//
//	@RequestMapping("/detail/{id}")
//	public ModelAndView showOrderDetail(@PathVariable String id, HttpServletRequest request,Principal principal) {
//		ModelAndView model = new ModelAndView();
//		User logginedUser = (User) ((Authentication) principal).getPrincipal();
//		Account account = accountService.findById(logginedUser.getUsername());
//		model.addObject("account", account);
//		model.setViewName("pages/order/order-brower-app");
//		if (id != null) {
//			OrderrApp orderWeb = service.findById(Integer.valueOf(id));
//			String deliveryStatus = orderWeb.getDeliveryStatus();
//			List<OrderrAppDetail> ode = detailSv.findByOrderApp(orderWeb);
//			boolean hasCancelled = true;
//			String name = "";
//			String title = "";
//			switch (deliveryStatus) {
//			case DeliveryStatus.NOT_APPROVED:
//				title = DeliveryStatus.WAITING_FOR_DELIVERY;
//				break;
//
//			case DeliveryStatus.WAITING_FOR_DELIVERY:
//				title = DeliveryStatus.DELIVERING;
//
//				break;
//
//			case DeliveryStatus.DELIVERING:
//				title = DeliveryStatus.SUCCESSFUL;
//				name = DeliveryStatus.DELIVERING_2;
//				break;
//
//			case DeliveryStatus.WAITING_FOR_DELIVERY_2:
//				title = DeliveryStatus.DELIVERING;
//				break;
//
//			case DeliveryStatus.DELIVERING_2:
//				title = DeliveryStatus.SUCCESSFUL;
//				name=DeliveryStatus.CANCELLED;
//
//				break;
//
//			case DeliveryStatus.SUCCESSFUL:
//				hasCancelled = false;
//				break;
//
//			case DeliveryStatus.CANCELLED:
//				hasCancelled = false;
//				break;
//
//			default:
//				break;
//			}
//
//			model.addObject("name", name);
//			model.addObject("ode", ode);
//			model.addObject("orderWeb", orderWeb);
//			model.addObject("title", title);
//			model.addObject("hasCancelled", hasCancelled);
//		}
//		return model;
//	}
//
//	@RequestMapping("/cancel/{id}")
//	public String adminCancelOrder(@PathVariable String id) {
//		System.out.println("id: "+id);
//		OrderrApp orderWeb = service.findById(Integer.valueOf(id));
//		orderWeb.setDeliveryStatus(DeliveryStatus.CANCELLED);
//		String paymentStatus = orderWeb.getPaymentStatus();
//		if (paymentStatus.equalsIgnoreCase(PaymentStatus.UNPAID)
//				|| paymentStatus.equalsIgnoreCase(PaymentStatus.PENDING_ATM)) {
//			orderWeb.setPaymentStatus(PaymentStatus.CANCELLED);
//		}
//		service.save(orderWeb);
//		return "redirect:/admin/order-app/detail/{id}";
//	}
//
//
//	@RequestMapping("/change-status/{status}/{id}")
//	public String adminChangeStatusOrder(@PathVariable String id, @PathVariable String status) {
//		int id1 = Integer.parseInt(id);
//		OrderrApp orderWeb = service.findById(id1);
//		orderWeb.setDeliveryStatus(status);
//
//		if (status.equalsIgnoreCase(DeliveryStatus.SUCCESSFUL)) {
//			orderWeb.setPaymentStatus(PaymentStatus.PAID);
//		} else if (status.equalsIgnoreCase(DeliveryStatus.CANCELLED)) {
//			String paymentStatus = orderWeb.getPaymentStatus();
//			if (paymentStatus.equalsIgnoreCase(PaymentStatus.UNPAID)
//					|| paymentStatus.equalsIgnoreCase(PaymentStatus.PENDING_ATM)) {
//				orderWeb.setPaymentStatus(PaymentStatus.CANCELLED);
//			}
//		}
//		service.capnhatStt(status, id1);
//		return "redirect:/admin/order-app/detail/{id}";
//	}
//}
