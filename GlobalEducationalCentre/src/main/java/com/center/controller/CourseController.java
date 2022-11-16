package com.center.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.center.entity.Course;
import com.center.service.CourseService;

@RestController
public class CourseController {

	@Autowired
	CourseService courseService;

	@GetMapping("/start")
	public ModelAndView getCourses(Model model) {

		ModelAndView mv = new ModelAndView("home");

		mv.addObject("courses", courseService.getAllCourses());

		return mv;

	}

	@GetMapping("/new")
	public ModelAndView newCourseForm(Model model) {

		ModelAndView mv = new ModelAndView("new_course");

		mv.addObject("courses", new Course());

		return mv;

	}
	
	@PostMapping("/save")
	public ModelAndView saveCourse(@ModelAttribute("courses") Course course ) {

		ModelAndView mv = new ModelAndView("redirect:/start");

		courseService.saveData(course);

		return mv;

	}

}
