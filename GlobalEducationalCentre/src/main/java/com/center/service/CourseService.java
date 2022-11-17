package com.center.service;

import java.util.List;
import java.util.Optional;

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
	
	public void deleteData(Long courseId) {
		courseRepository.deleteById(courseId);
	}
	
	public  Course getCourseData(Long courseId) {
		Optional<Course> result = courseRepository.findById(courseId);
		return result.get();
	}
}
