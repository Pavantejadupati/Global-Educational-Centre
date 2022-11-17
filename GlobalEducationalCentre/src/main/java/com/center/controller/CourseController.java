package com.center.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public ModelAndView saveCourse(@Valid  @ModelAttribute("courses") Course course, BindingResult result, @RequestParam String action) {

		ModelAndView mv = null;

		if (result.hasErrors()) {
			
			if(action.equals("new")) {
				mv = new ModelAndView("/new_course");
			}else if(action.equals("edit")) {
				mv = new ModelAndView("/update_course");
			}


		} else {

			mv = new ModelAndView("redirect:/start");

			courseService.saveData(course);

		}

		return mv;
	}
	
	@GetMapping("/delete")
	public ModelAndView deleteCourse(@RequestParam Long courseId) {

		ModelAndView mv = new ModelAndView("redirect:/start");

		courseService.deleteData(courseId);

		return mv;
	}
	
	@GetMapping("/edit")
	public ModelAndView editCourseForm(@RequestParam Long courseId) {

		ModelAndView mv = new ModelAndView("update_course");
		
		Course updatedCourse = courseService.getCourseData(courseId);
		
		mv.addObject("courses", updatedCourse);

		return mv;
	}

}
