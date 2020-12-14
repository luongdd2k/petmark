package com.springboot.PetMark.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.openqa.selenium.DeviceRotation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.entities.OrderrWebDetail;
import com.springboot.PetMark.service.AccessoriesService;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.OrderrWebDetailService;
import com.springboot.PetMark.service.OrderrWebService;

import pet.mart.util.DeliveryStatus;
import pet.mart.util.PaymentStatus;

@Controller
@RequestMapping("/admin/orders")
public class OrderAdminController {

	@Autowired
	AccessoriesService accessoriesService;
	@Autowired
	OrderrWebDetailService detailSv;
	@Autowired
	AccountService accountService;

	@Autowired
	OrderrWebService service;

	@RequestMapping()
	public String showOrders(ModelMap model, HttpServletRequest request, Principal principal) {
		HttpSession session = request.getSession();
		List<OrderrWeb> list = new ArrayList<>();
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addAttribute("account", account);
		int targetPage;

		if (session.getAttribute("targetPage") != null) {
			targetPage = (int) session.getAttribute("targetPage");
		} else
			targetPage = 1;

		if (request.getParameter("targetPage") != null) {
			targetPage = Integer.valueOf(request.getParameter("targetPage"));
		}
		int page = targetPage - 1;
		String sortValue = request.getParameter("sortValue");
		System.out.println("Index Sort: " + sortValue);
		if (sortValue == null)
			sortValue = "-2";
		model.addAttribute("sortValue", sortValue);
		try {
			switch (sortValue) {
			case "-2":
				list = service.findAll();
				break;
			case "-1":
				list = service.findByPlace(0);
				break;
			case "0":
				list = service.findByPlace(1);
				break;
			case "1":
				list = service.findByStt(DeliveryStatus.NOT_APPROVED);
				break;
			case "2":
				list = service.findByStt(DeliveryStatus.DELIVERING);
				break;
			case "3":
				list = service.findByStt(DeliveryStatus.DELIVERING_2);
				break;
			case "4":
				list = service.findByStt(DeliveryStatus.SUCCESSFUL);
				break;
			case "5":
				list = service.findByStt(DeliveryStatus.CANCELLED);
				break;
			default:

				break;
			}

		} catch (Exception e) {
			return "404";
		}
		model.addAttribute("list", list);
		return "pages/order/order-manager";
	}

	@RequestMapping("/getPageableQLSP")
	public String getPageableQLSP(HttpServletRequest request) {

		return "redirect:/admin/orders";
	}

//	
	@RequestMapping("/changeSortValue")
	public String changeSortValue(HttpServletRequest request) {
		String sortValue = request.getParameter("sortValue");

		return "redirect:/admin/orders?sortValue=" + sortValue;

	}

	@RequestMapping("/detail/{id}")
	public ModelAndView showOrderDetail(@PathVariable String id, HttpServletRequest request, Principal principal) {
		ModelAndView model = new ModelAndView();
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addObject("account", account);
		model.setViewName("pages/order/order-brower");
		if (id != null) {
			OrderrWeb orderWeb = service.findById(Integer.valueOf(id));
			String deliveryStatus = orderWeb.getDeliveryStatus();
			List<OrderrWebDetail> ode = detailSv.findOrderrWeb(orderWeb);
			boolean hasCancelled = true;
			String name = "";
			String title = "";
			switch (deliveryStatus) {
			case DeliveryStatus.NOT_APPROVED:
				title = DeliveryStatus.WAITING_FOR_DELIVERY;
				break;

			case DeliveryStatus.WAITING_FOR_DELIVERY:
				title = DeliveryStatus.DELIVERING;

				break;

			case DeliveryStatus.DELIVERING:
				title = DeliveryStatus.SUCCESSFUL;
				name = DeliveryStatus.DELIVERING_2;
				break;

			case DeliveryStatus.WAITING_FOR_DELIVERY_2:
				title = DeliveryStatus.DELIVERING;
				break;

			case DeliveryStatus.DELIVERING_2:
				title = DeliveryStatus.SUCCESSFUL;
				name = DeliveryStatus.CANCELLED;

				break;

			case DeliveryStatus.SUCCESSFUL:
				hasCancelled = false;
				break;

			case DeliveryStatus.CANCELLED:
				hasCancelled = false;
				break;

			default:
				break;
			}

			model.addObject("name", name);
			model.addObject("ode", ode);
			model.addObject("orderWeb", orderWeb);
			model.addObject("title", title);
			model.addObject("hasCancelled", hasCancelled);
		}
		return model;
	}

	@RequestMapping("/cancel/{id}")
	public String adminCancelOrder(@PathVariable String id) {
		OrderrWeb orderWeb = service.findById(Integer.valueOf(id));
		if (orderWeb.getDeliveryStatus().equals(DeliveryStatus.WAITING_FOR_DELIVERY)) {
			List<OrderrWebDetail> orderDetail = orderWeb.getDetail();
			for (OrderrWebDetail detail : orderDetail) {
				Accessories acc = detail.getAccessories();
				acc.setAmount(acc.getAmount() + detail.getAmount());
				accessoriesService.updateAccessories(acc);
			}
		}
		orderWeb.setDeliveryStatus(DeliveryStatus.CANCELLED);
		String paymentStatus = orderWeb.getPaymentStatus();
		if (paymentStatus.equalsIgnoreCase(PaymentStatus.UNPAID)
				|| paymentStatus.equalsIgnoreCase(PaymentStatus.PENDING_ATM)) {
			orderWeb.setPaymentStatus(PaymentStatus.CANCELLED);
		}
		service.save(orderWeb);
		return "redirect:/admin/orders/detail/{id}";
	}

	@RequestMapping("/change-status/{status}/{id}")
	public String adminChangeStatusOrder(@PathVariable String id, @PathVariable String status) {
		int id1 = Integer.parseInt(id);
		OrderrWeb orderWeb = service.findById(id1);
		orderWeb.setDeliveryStatus(status);
		List<OrderrWebDetail> orderDetail = orderWeb.getDetail();
		if (status.equalsIgnoreCase(DeliveryStatus.SUCCESSFUL)) {
			orderWeb.setPaymentStatus(PaymentStatus.PAID);
		} else if (status.equalsIgnoreCase(DeliveryStatus.CANCELLED)) {
			for (OrderrWebDetail detail : orderDetail) {
				Accessories acc = detail.getAccessories();
				acc.setAmount(acc.getAmount() + detail.getAmount());
				accessoriesService.updateAccessories(acc);
			}
			String paymentStatus = orderWeb.getPaymentStatus();
			if (paymentStatus.equalsIgnoreCase(PaymentStatus.UNPAID)
					|| paymentStatus.equalsIgnoreCase(PaymentStatus.PENDING_ATM)) {
				orderWeb.setPaymentStatus(PaymentStatus.CANCELLED);
			}
		}
		if (status.equals(DeliveryStatus.WAITING_FOR_DELIVERY)) {
			for (OrderrWebDetail detail : orderDetail) {
				Accessories acc = detail.getAccessories();
				acc.setAmount(acc.getAmount() - detail.getAmount());
				accessoriesService.updateAccessories(acc);
			}
		}
		service.updateDelivery(status, id1);
		return "redirect:/admin/orders/detail/{id}";
	}

	@RequestMapping("/show-by-stt-place/{stt}/{place}")
	public ModelAndView showBySttPlace(Principal principal, @PathVariable String stt, @PathVariable int place) {
		ModelAndView model = new ModelAndView();
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addObject("account", account);
		List<OrderrWeb> list = service.findBySttPlace(stt, place);
		model.addObject("list", list);
		model.setViewName("pages/order/order-manager");
		return model;
	}
	@RequestMapping("/show-delivering")
	public ModelAndView showByStt(Principal principal) {
		ModelAndView model = new ModelAndView();
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addObject("account", account);
		List<OrderrWeb> list = service.findStt(DeliveryStatus.DELIVERING,DeliveryStatus.DELIVERING_2);
		model.addObject("list", list);
		model.setViewName("pages/order/order-manager");
		return model;
	}
}
