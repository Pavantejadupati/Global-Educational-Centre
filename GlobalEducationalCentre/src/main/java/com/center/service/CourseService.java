package com.center.service;

import java.util.List;

import com.center.entity.Course;

public interface CourseService {
	
	public List<Course> getAllCourses();
	
	public void saveData(Course course);
	
	public void deleteData(Long courseId);
	
	public  Course getCourseData(Long courseId);
	
	public Long generatedId();

}
