package com.collegefest.event.debate.service;

import java.util.List;

import com.collegefest.event.debate.entity.Student;

public interface IStudentService {
	public Student addStudent(Student student);
	public List<Student> displayStudent();
	public Student findStudent (int studentId);
	public void deleteStudent(int studentId);
	public boolean updateStudent(int studentId, String firstName, String lastName, String course, String country);
	
}
