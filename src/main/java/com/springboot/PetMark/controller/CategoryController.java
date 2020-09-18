package com.springboot.PetMark.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.PetMark.entities.Category;
import com.springboot.PetMark.service.CategoryService;

@Controller
@RequestMapping("/admin/CategoryManagement")
public class CategoryController {
	@Autowired
	CategoryService CategoryService;
	@Autowired
	ServletContext context;

	@RequestMapping
	public String index(ModelMap model, HttpServletRequest request) throws IllegalArgumentException {
		HttpSession session = request.getSession();
//		List<Product> listProduct = productService.showProductManagement();
		List<Category> listCategory = new ArrayList<Category>();
		List<Integer> listCategoryInteger = new ArrayList<Integer>();
		listCategory = CategoryService.findAll();
//		listCategory = CategoryService.showCategoryPageable(false, null);

		int countContinueCategory = CategoryService.countContinueProduct();
		System.out.println("countContinueProduct: " + countContinueCategory);
		int totalPage = (int) Math.ceil((double) countContinueCategory / 10);

		int targetPage;
		if (session.getAttribute("targetPage") != null) {
			targetPage = (int) session.getAttribute("targetPage");
		} else
			targetPage = 1;

		if (request.getParameter("targetPage") != null) {
			targetPage = Integer.valueOf(request.getParameter("targetPage"));
		}

		int page = targetPage - 1;

		String nameButton2 = "Ngừng kinh doanh";
		String action = "DisContinuedCategory";
		String classButtonDelete = "btn_delete2";
		String sortValue = request.getParameter("sortValue");
		System.out.println("Index Sort: " + sortValue);
		if (sortValue == null)
			sortValue = "-1";
		model.addAttribute("sortValue", sortValue);
		try {
			switch (sortValue) {
			case "-1":
				if (targetPage > totalPage)
					page = 0;
				listCategory = CategoryService.showCategoryPageable(false,
						PageRequest.of(page, 10, Sort.by("id").ascending()));

				break;
			case "0":
				if (targetPage > totalPage)
					page = 0;
				listCategory = CategoryService.showCategoryPageable(false,
						PageRequest.of(page, 10, Sort.by("id").descending()));

				break;
			case "1":
				if (targetPage > totalPage)
					page = 0;
				listCategory = CategoryService.showCategoryPageable(true,
						PageRequest.of(page, 10, Sort.by("id").ascending()));
				totalPage = (int) Math.ceil((double) CategoryService.countDiscontinueProduct() / 10);
				nameButton2 = "Đăng bán";
				action = "ContinuedCategory";
				classButtonDelete = "permanently_deleted";

				break;
			default:

				break;
			}

		} catch (Exception e) {
			return "404";
		}
		if (!listCategoryInteger.isEmpty()) {
			for (Integer integer : listCategoryInteger) {
				listCategory.add(CategoryService.findById(integer));
			}
		}

		if (session.getAttribute("add") != null) {
			model.addAttribute("add", "added");
			session.setAttribute("add", null);
		}

		session.setAttribute("targetPage", targetPage);
		model.addAttribute("nameButton2", nameButton2);
		model.addAttribute("action", action);
		model.addAttribute("classButtonDelete", classButtonDelete);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("listCategory", listCategory);
		System.out.println("Hãng phụ kiện" + listCategory);

		return "pages/category/category-manager";
	}

	@RequestMapping("/getPageableQLSP")
	public String getPageableQLSP(HttpServletRequest request) {
		return "redirect:/admin/CategoryManagement";
	}

	@RequestMapping("/changeSortValue")
	public String changeSortValue(HttpServletRequest request) {
		String sortValue = request.getParameter("sortValue");
		return "redirect:/admin/CategoryManagement?sortValue=" + sortValue;
	}

	@RequestMapping("/AddCategory")
	public String addCategory(HttpServletRequest request) {
		String name = request.getParameter("name");
		String information = request.getParameter("thongtin");
		Category Category = new Category(name, information, false);
		System.out.println(Category);
		CategoryService.addCategory(Category);
		request.getSession().setAttribute("add", "added");

		return "redirect:/admin/CategoryManagement";
	}

	@RequestMapping("/UpdateCategory")
	@ResponseBody
	public String updateProduct(HttpServletRequest request) {
		int id = Integer.valueOf(request.getParameter("p_fix_id"));
		String name = request.getParameter("p_fix_name");
		String information = request.getParameter("p_fix_information");
		Category category = new Category(id, name, information, false);
		System.out.println("Update: " + category);
		CategoryService.updateCategory(category);
		return "?update=done";
	}

	@RequestMapping("/DisContinuedCategory")
//	@ResponseBody
	public String disContinuedCategory(HttpServletRequest request) {
		int CategoryId = Integer.valueOf(request.getParameter("CategoryId"));
		System.out.println("ID giống: " + CategoryId);
		CategoryService.disContinueCategory(CategoryId);

		return "redirect:/admin/CategoryManagement";
	}

	@RequestMapping("/ContinuedCategory")
//	@ResponseBody
	public String continuedCategory(HttpServletRequest request) {
		int CategoryId = Integer.valueOf(request.getParameter("CategoryId"));
		CategoryService.continueCategory(CategoryId);

		return "redirect:/admin/CategoryManagement";
	}

	@RequestMapping("/UploadIMG")
	@ResponseBody
	public String uploadIMG(ModelMap model, @RequestParam("addProductIMG") MultipartFile photo) {
		try {
			String fileContentType = photo.getContentType();
			long fileSize = photo.getSize();
			System.out.println("fileContentType: " + fileContentType);
			System.out.println("fileSize: " + fileSize);
			System.out.println(fileContentType.substring(0, 6));
			if (!fileContentType.substring(0, 6).equals("image/")) {
				return "?photo_name=FAIL";
			} else if (fileSize > 2097152) {
				return "?photo_name=OVERSIZE";
			}

			String photoPath = context.getRealPath("/files/shop_item/" + photo.getOriginalFilename());
			photo.transferTo(new File(photoPath));
			model.addAttribute("photo_name", photo.getOriginalFilename());

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Lỗi lưu file: " + e);
		}

		return "?photo_name=files/shop_item/" + photo.getOriginalFilename();
	}
}
