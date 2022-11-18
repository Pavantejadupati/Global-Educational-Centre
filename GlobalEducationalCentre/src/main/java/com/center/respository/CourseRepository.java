package com.center.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.center.entity.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long>{

	
	@Query("select max(courseId) from Course")
	public Long findMaxCourseId();

}
