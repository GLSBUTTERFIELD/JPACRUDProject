package com.skilldistillery.danceclass.controllers;

import java.time.LocalDate;
import java.time.LocalDateTime;
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
		if (dc == null) {
			model.addAttribute("errorMessage", "Class # " + classId + " not found.");
			return "error";
		}
		model.addAttribute("danceClass", dc);
		return "classdetails";
	}

	@RequestMapping(path = "addClass.do", method = RequestMethod.GET)
	public String navigateToAddClassJSP(Model model) {
		model.addAttribute("newClass", new DanceClass());
		return "addClass";
	}

	@RequestMapping(path = "addClass.do", method = RequestMethod.POST)
	public String addClass(Model model, DanceClass addedClass, RedirectAttributes redir) {
		addedClass.setLastUpdate(LocalDateTime.now());
		LocalDate localDate = addedClass.getDate();
		String formattedDate = localDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		String weekday = localDate.getDayOfWeek().toString();
		String weekdayCapitalized = weekday.charAt(0) + weekday.substring(1).toLowerCase();
		addedClass.setWeekday(weekdayCapitalized);
		DanceClass newClass = classDao.createClass(addedClass);
		model.addAttribute("formattedDate", formattedDate);
		model.addAttribute("newClass", addedClass);

		redir.addFlashAttribute("newClass", newClass);
		redir.addFlashAttribute("message", "Yay, you added a new class!");
		return "redirect:classAdded.do";
	}

	@RequestMapping(path = "classAdded.do", method = RequestMethod.GET)
	public String classAdded(Model model) {
		model.addAttribute("newClass", model.asMap().get("newClass"));
		model.addAttribute("message", model.asMap().get("message"));
		return "classAdded";
	}

	@RequestMapping(path = "updateClass.do", method = RequestMethod.GET)
	public String navigateToUpdateClassJSP(Model model, @RequestParam("classId") int classId) {
		DanceClass classToUpdate = classDao.findById(classId);
		if (classToUpdate == null) {
			model.addAttribute("errorMessage", "Class not found with Id " + classId);
			return "error";
		}
		LocalDate localDate = classToUpdate.getDate();
		String formattedDate = localDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		String weekday = localDate.getDayOfWeek().toString();
		String weekdayCapitalized = weekday.charAt(0) + weekday.substring(1).toLowerCase();
		classToUpdate.setWeekday(weekdayCapitalized);
		model.addAttribute("formattedDate", formattedDate);
		model.addAttribute("updatedClass", classToUpdate);
		return "updateClass";
	}

	@RequestMapping(path = "updateClass.do", method = RequestMethod.POST)
	public String updateClass(RedirectAttributes redir, @ModelAttribute("updatedClass") DanceClass updatedClass) {
		int classId = updatedClass.getId();
		DanceClass uClass = classDao.updateClass(classId, updatedClass);
		redir.addFlashAttribute("updatedClass", uClass);
		redir.addFlashAttribute("message", "Class updated successfully!");
		return "redirect:classUpdated.do";
	}
	
	@RequestMapping(path="classUpdated.do", method = RequestMethod.GET)
	public String classUpdated (Model model) {
		DanceClass updatedClass = (DanceClass) model.asMap().get("updatedClass");
		String message = model.asMap().get("message").toString();
		model.addAttribute("updatedClass", updatedClass);
		model.addAttribute("message", message);
		return "classUpdated";
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

	@RequestMapping(path = "classDeleted.do", method = RequestMethod.GET)
	public String showClassDeletedConfirmation(Model model) {
		model.addAttribute("message", "Class successfully deleted.");
		return "classDeleted";
	}

	@RequestMapping(path = "confirmDeleteClass.do", method = RequestMethod.GET)
	public String confirmDeleteClass(Model model, @RequestParam("classId") int classId) {
		DanceClass classToDelete = classDao.findById(classId);
		model.addAttribute("classToDelete", classToDelete);
		return "confirmDeleteClass";
	}

}
