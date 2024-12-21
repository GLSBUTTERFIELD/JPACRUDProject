package com.skilldistillery.danceclass.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.danceclass.data.DanceClassDAO;
import com.skilldistillery.danceclass.entities.DanceClass;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class DanceClassController {

	@Autowired
	private DanceClassDAO classDao;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("classList", classDao.findAll());
		return "home";
	}

	@RequestMapping(path = "showClass.do", method = RequestMethod.GET)
	public String showClass(Model model, @RequestParam("classId") int classId) {
		DanceClass dc = classDao.findById(classId);
		model.addAttribute("danceClass", dc);
		return "classdetails";
	}

	@RequestMapping(path = "addClass.do", method = RequestMethod.POST)
	public String addClass(Model model, DanceClass addedClass) {
		DanceClass nClass = classDao.createClass(addedClass);
		model.addAttribute("newClass", nClass);
		return "result";
	}

	@RequestMapping(path = "updateClass.do", method = RequestMethod.GET)
	public String navigateToUpdateClassJSP(Model model, @RequestParam("classId") int classId,
			DanceClass classToUpdate) {
		model.addAttribute("classToUpdate", classDao.findById(classId));
		return "updateClass";
	}

	@RequestMapping(path = "updateClass.do", method = RequestMethod.POST)
	public String updateClass(Model model, @RequestParam("classId") int classId, DanceClass updatedClass) {
		DanceClass uClass = classDao.updateClass(classId, updatedClass);
		model.addAttribute("updatedClass", uClass);
		return "result";
	}

	@RequestMapping(path = "deleteClass.do", method = RequestMethod.POST)
	public String deleteClass(Model model, @RequestParam("classId") int classId) {
		boolean classDeleted = classDao.deleteById(classId);
		if (classDeleted) {
			return "result";
		} else {
			return "error";
		}
	}

}
