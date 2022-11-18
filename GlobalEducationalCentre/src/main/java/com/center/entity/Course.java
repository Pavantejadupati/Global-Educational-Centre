package com.center.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Entity
@Data
public class Course {
	
	@Id
	private Long courseId;
	
	@NotEmpty(message = "enter valid courseName")
	private String  courseName;
	
	@NotNull(message = "enter valid fees")
	private Double fees;
	
	@NotNull(message = "enter valid duration")
	private Integer duration;
	
	
}
