package com.center.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.center.entity.Course;
import com.center.respository.CourseRepository;

@Service
public class CourseService {

	@Autowired
	 CourseRepository courseRepository;
	
	public List<Course> getAllCourses() {
		return courseRepository.findAll();
	}
	
	public void saveData(Course course) {
		 courseRepository.save(course);
	}
}
