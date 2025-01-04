package com.skilldistillery.danceclass.controllers;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

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
		if (classToUpdate == null) {
			model.addAttribute("errorMessage", "Class not found with Id " + classId);
			return "error";
		}
		
		LocalDate localDate = classToUpdate.getDate();
		String formattedDate= localDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		model.addAttribute("formattedDate", formattedDate);
		model.addAttribute("classToUpdate", classToUpdate);
		
		return "updateClass";
	}

	@RequestMapping(path = "updateClass.do", method = RequestMethod.POST)
	public String updateClass(Model model, @ModelAttribute("updatedClass") DanceClass updatedClass) {
		int classId = updatedClass.getId();
		DanceClass uClass = classDao.updateClass(classId, updatedClass);
		model.addAttribute("class", uClass);
		return "result";
	}

	@RequestMapping(path = "deleteClass.do", method = RequestMethod.POST)
	public String deleteClass(RedirectAttributes redirectAttributes, @RequestParam("classId") int classId) {
		boolean classDeleted = classDao.deleteById(classId);
		if (classDeleted) {
			return "redirect:/classDeleted.do";
		} else {
			return "redirect:/error.do";
		}
	}
	@RequestMapping(path="classDeleted.do", method=RequestMethod.GET)
	public String showClassDeletedConfirmation(Model model) {
		model.addAttribute("message", "Class successfully deleted.");
		return "classDeleted";
	}
	
	@RequestMapping(path="confirmDeleteClass.do", method=RequestMethod.GET)
	public String confirmDeleteClass(Model model, @RequestParam("classId") int classId) {
		DanceClass classToDelete = classDao.findById(classId);
		model.addAttribute("classToDelete", classToDelete);
		return "confirmDeleteClass";
	}

}
