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

import com.springboot.PetMark.entities.Species;
import com.springboot.PetMark.service.SpeciesService;

@Controller
@RequestMapping("/admin/SpeciesManagement")
public class SpeciesController {
	@Autowired
	SpeciesService speciesService;
	
	@Autowired
	ServletContext context;
	
	@RequestMapping
	public String index(ModelMap model, HttpServletRequest request) throws IllegalArgumentException{
		HttpSession session = request.getSession();
//		List<Product> listProduct = productService.showProductManagement();
		List<Species> listSpecies = new ArrayList<Species>();
		List<Integer> listSpeciesInteger = new ArrayList<Integer>();
		listSpecies = speciesService.findAll();
//		listSpecies = speciesService.showSpeciesPageable(false, null);
		
		int countContinueSpecies = speciesService.countContinueProduct();
		System.out.println("countContinueProduct: " + countContinueSpecies);
		int totalPage = (int) Math.ceil((double)countContinueSpecies/10);
		
		int targetPage;
		if(session.getAttribute("targetPage") != null ) {
			targetPage = (int) session.getAttribute("targetPage");
		} else targetPage = 1;
		
		if(request.getParameter("targetPage") != null) {
			targetPage = Integer.valueOf(request.getParameter("targetPage"));
		}
		
		int page = targetPage - 1;
		String action ="DisContinuedSpecies";
		String nameButton2 = "Ngừng kinh doanh";
		String classButton2 = "btn_upload";
		String sortValue = request.getParameter("sortValue");
		System.out.println("Index Sort: " + sortValue);
		if(sortValue == null) sortValue = "-1";
		model.addAttribute("sortValue", sortValue);
		try {		
			switch (sortValue) {
			case "-1":
				if(targetPage > totalPage) page = 0;
				listSpecies = speciesService.showSpeciesPageable(false, PageRequest.of(page, 10, Sort.by("id").ascending()));
				
				break;
			case "0":
				if(targetPage > totalPage) page = 0;
				listSpecies = speciesService.showSpeciesPageable(false, PageRequest.of(page, 10, Sort.by("id").descending()));
				
				break;
			case "1":
				if(targetPage > totalPage) page = 0;
				listSpecies = speciesService.showSpeciesPageable(true, PageRequest.of(page, 10, Sort.by("id").ascending()));
				totalPage = (int) Math.ceil((double)speciesService.countDiscontinueProduct()/10);
				nameButton2 = "Đăng bán";
				action = "ContinuedSpecies";
				
				
				break;
			default:
				
				break;
			}
		
		} catch (Exception e) {
			return "404";
		}
		if(!listSpeciesInteger.isEmpty()) {
			for (Integer integer : listSpeciesInteger) {
				listSpecies.add(speciesService.findById(integer));
			}
		}
		
		if(session.getAttribute("add")!=null) {
			model.addAttribute("add", "added");
			session.setAttribute("add", null);
		}
		
		session.setAttribute("targetPage", targetPage);
		model.addAttribute("nameButton2", nameButton2);
		model.addAttribute("classButton2", classButton2);
		model.addAttribute("action", action);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("listSpecies", listSpecies);
		System.out.println("Giong" + listSpecies);
		
		return "pages/bread/pet-bread";
	}
	
	@RequestMapping("/getPageableQLSP")
	public String getPageableQLSP(HttpServletRequest request) {
		return "redirect:/admin/SpeciesManagement";
	}
	
	@RequestMapping("/changeSortValue")
	public String changeSortValue(HttpServletRequest request) {
		String sortValue = request.getParameter("sortValue");
		return "redirect:/admin/SpeciesManagement?sortValue="+sortValue;	
	}
	
	@RequestMapping("/AddSpecies")
	public String addSpecies(HttpServletRequest request) {
		String name = request.getParameter("nameBread");
		String information = request.getParameter("information");
//		String imagePath = request.getParameter("hiddenImgPath");
//		System.out.println("IMGpath:" + imagePath);
		Species species = new Species(name, information, false);
		System.out.println("Giống thêm: "+species);
//		if(species.getId()==null) {
//			System.out.println("ID rỗng");
//		}
		speciesService.addSpecies(species);
//		request.getSession().setAttribute("add", "added");
		
		return "redirect:/admin/SpeciesManagement";
	}
	
	@RequestMapping("/UpdateSpecies")
	@ResponseBody
	public String updateProduct(HttpServletRequest request) {
		int id = Integer.valueOf(request.getParameter("p_fix_id"));
		String name = request.getParameter("p_fix_name");
		String information = request.getParameter("p_fix_information");
		String imagePath = request.getParameter("p_fix_image");	
		Species species = new Species(id, name, information, false);	
//		System.out.println("Update: " + species);
		speciesService.updateSpecies(species);
		return "?update=done";
	}
	
	
	
	@RequestMapping("/DisContinuedSpecies")
//	@ResponseBody
	public String disContinuedSpecies(HttpServletRequest request) {
		int speciesId = Integer.valueOf(request.getParameter("speciesId"));
		System.out.println("ID giống: "+ speciesId);
		speciesService.disContinueSpecies(speciesId);
		
		return "redirect:/admin/SpeciesManagement";
	}
	
	@RequestMapping("/ContinuedSpecies")
//	@ResponseBody
	public String continuedSpecies(HttpServletRequest request) {
		int speciesId = Integer.valueOf(request.getParameter("speciesId"));
		speciesService.continueSpecies(speciesId);
		
		return "redirect:/admin/SpeciesManagement";
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
			if(!fileContentType.substring(0, 6).equals("image/")) {
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
		
		return "?photo_name=files/shop_item/"+photo.getOriginalFilename();
	}
}
