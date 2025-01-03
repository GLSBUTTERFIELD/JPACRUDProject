package com.skilldistillery.danceclass.controllers;

import org.hibernate.internal.build.AllowSysOut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.danceclass.data.DanceClassDAO;
import com.skilldistillery.danceclass.entities.DanceClass;

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

	@RequestMapping(path = "addClass.do", method = RequestMethod.GET)
	public String navigateToAddClassJSP() {
		return "addClass";
	}
	@RequestMapping(path = "addClass.do", method = RequestMethod.POST)
	public String addClass(Model model, DanceClass addedClass, RedirectAttributes redir) {
		DanceClass newClass = classDao.createClass(addedClass);
		redir.addFlashAttribute("newClass", newClass);
		return "redirect:classAdded.do";
	}

	@RequestMapping(path = "classAdded.do", method = RequestMethod.GET)
	public String classAdded(Model model) {
		DanceClass newClass= (DanceClass)model.asMap().get("newClass");
		model.addAttribute("class", newClass);
		return "result";
	}
	
	@RequestMapping(path = "updateClass.do", method = RequestMethod.GET)
	public String navigateToUpdateClassJSP(Model model, @RequestParam("classId") int classId) {
		DanceClass classToUpdate = classDao.findById(classId); 
		model.addAttribute("classToUpdate", classToUpdate);
		System.out.println(classToUpdate);
		return "updateClass";
	}

	@RequestMapping(path = "updateClass.do", method = RequestMethod.POST)
	public String updateClass(Model model, @RequestParam("classId") int classId, @ModelAttribute("updatedClass") DanceClass updatedClass) {
		DanceClass uClass = classDao.updateClass(classId, updatedClass);
		model.addAttribute("class", uClass);
		return "result";
	}

	@RequestMapping(path = "deleteClass.do", method = RequestMethod.POST)
	public String deleteClass(Model model, @RequestParam("classId") int classId) {
		boolean classDeleted = classDao.deleteById(classId);
		if (classDeleted) {
			model.addAttribute("message", "Class successfully deleted.");
			return "redirect:/home.do";
		} else {
			model.addAttribute("errorMessage","Class not found or could not be deleted.");
			return "error";
		}
	}

}
