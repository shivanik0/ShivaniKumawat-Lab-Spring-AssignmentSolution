package com.collegefest.event.debate.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.collegefest.event.debate.entity.Student;

public interface IStudentRepository extends JpaRepository<Student, Integer> {

}
