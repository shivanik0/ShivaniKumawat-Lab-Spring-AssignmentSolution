package com.collegefest.event.debate.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.collegefest.event.debate.entity.Student;
import com.collegefest.event.debate.repository.IStudentRepository;

@Service
public class StudentServiceImpl implements IStudentService {

	@Autowired
	private IStudentRepository studentRepository;
	
	@Override
	public Student addStudent(Student student) {
		return studentRepository.save(student);
	}

	@Override
	public List<Student> displayStudent() {
		return studentRepository.findAll();
	}

	@Override
	public Student findStudent(int studentId) {
		Optional<Student> optional = studentRepository.findById(studentId);
		if (optional.isPresent()) {
			return optional.get();
		}	
		else
			return null;		
	}

	@Override
	public void deleteStudent(int studentId) {
		Student student=findStudent(studentId);
		if (student!=null)
			studentRepository.delete(student);
	}

	@Override
	public boolean updateStudent(int studentId, String firstName, String lastName, String course, String country) {
		Student student=findStudent(studentId);
		if (student!=null) {
			student.setFirstName(firstName);
			student.setLastName(lastName);
			student.setCourse(course);
			student.setCountry(country);
			studentRepository.save(student);
			return true;
		}
		else
			return false;
	}

}
