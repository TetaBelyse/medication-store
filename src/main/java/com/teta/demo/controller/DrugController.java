package com.teta.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.teta.demo.dao.DrugRepo;
import com.teta.demo.model.Drug;

@Controller
public class DrugController {
	@Autowired
	DrugRepo repo;
	
	@RequestMapping("/")
	public String home() {
		return "home.html";
	}
	
	@RequestMapping(value = "/drugs")
	public ModelAndView newDrug() {
		ModelAndView mv = new ModelAndView("drug.jsp");
		mv.addObject("drugs", repo.findAll());
		return mv;
	}
	
	@RequestMapping(value = "/drugs", method = RequestMethod.POST)
	public ModelAndView addDrug( 
			@RequestParam("name") String name, 
			@RequestParam("description") String description, 
			@RequestParam("manufacturer") String manufacturer) {
		
		Drug drug = new Drug();
		drug.setName(name);
		drug.setDescription(description);
		drug.setManufacturer(manufacturer);
		
		repo.save(drug);
		ModelAndView mv = new ModelAndView("drug.jsp");
		mv.addObject("drugs", repo.findAll());
		return mv;
	}
	
	@RequestMapping(value = "/remove")
	public String deleleDrug( 
			@RequestParam("id") int id) {
		repo.deleteById(id);
		return "redirect:/drugs";
	}

	@RequestMapping(value = "/update")
	public ModelAndView updateDrug( 
			@RequestParam("id") int id) {
		
		ModelAndView mv = new ModelAndView();
		Drug uDrug = (Drug)repo.findById(id).orElse(null);
		if (uDrug == null) {
			mv.setViewName("redirect:/drugs");
		} else {
			
			mv.setViewName("update-drug.jsp");
			mv.addObject("uDrug", uDrug);
		}
		return mv;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView doUpdate(Drug drug) {
		
		ModelAndView mv = new ModelAndView();
		repo.save(drug);
		mv.setViewName("redirect:/drugs");
		return mv;
	}
}
