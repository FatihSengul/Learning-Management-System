package com.lms.demo.model;

import java.util.ArrayList;

import java.util.List;
import java.util.Set;

import javax.persistence.*;



@Entity
@Table(name = "course")
public class Course {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Id;

	private String name;
	private String description;
	private String title;

	private String coursecode;

	@ManyToMany(mappedBy = "courses", fetch = FetchType.LAZY)
	private List<User> users=new ArrayList<>();

	@ManyToOne
	@JoinColumn(name = "teacher_id")
	private User teacher;
	@OneToMany(mappedBy = "course")
	private List<Doc> metarials;

	@OneToMany(mappedBy = "course", cascade = CascadeType.ALL)
	private Set<Assignment> assignments;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Long getId() {
		return Id;
	}

	public void setId(Long cId) {
		this.Id = cId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCourseCode() {
		return coursecode;
	}

	public void setCourseCode(String courseCode) {
		this.coursecode = courseCode;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User getTeacher() {
		return teacher;
	}

	public void setTeacher(User teacher) {
		this.teacher = teacher;
	}

	public List<Doc> getMetarials() {
		return metarials;
	}

	public void setMetarials(List<Doc> metarials) {
		this.metarials = metarials;
	}

	public Set<Assignment> getAssignments() {
		return assignments;
	}

	public void setAssignments(Set<Assignment> assignments) {
		this.assignments = assignments;
	}
	

}
