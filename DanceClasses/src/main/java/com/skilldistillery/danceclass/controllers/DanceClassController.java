package com.skilldistillery.danceclass.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.danceclass.data.DanceClassDAO;
import com.skilldistillery.danceclass.entities.DanceClass;


@Controller
public class DanceClassController {

	@Autowired
	private DanceClassDAO classDao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String home (Model model) {
		model.addAttribute("classList", classDao.findAll());
		return "home";
	}
	
	@RequestMapping(path="showClass.do", method = RequestMethod.GET)
	public String showClass(Model model, @RequestParam("classId") int classId) {
		DanceClass dc = classDao.findById(classId);
		model.addAttribute("danceClass", dc);
		return "classdetails";
	}
	
}
