package com.collegefest.event.debate.controller; 

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.collegefest.event.debate.entity.Student;
import com.collegefest.event.debate.service.IStudentService;

@Controller
@RequestMapping ("/Student")
public class StudentController {

	@Autowired
	private IStudentService studentService;

	@RequestMapping (method = RequestMethod.POST, path="/add-student")
	//@RequestMapping ("/add-student")
	public String add(@RequestParam ("firstName") String firstname, @RequestParam ("lastName") String lastname, @RequestParam ("course") String course, @RequestParam ("country") String country) {
		Student student = new Student(firstname, lastname, course, country);
		System.out.println("Student added "+ student.getFirstName());
		studentService.addStudent(student);

		return "redirect:show-students";
	}

	@RequestMapping (method = RequestMethod.GET, path="/show-hello")
	@ResponseBody
	public ResponseEntity<String> displtest() {
		return new ResponseEntity<String>("Hello",HttpStatus.ACCEPTED);
	}

	@RequestMapping (method = RequestMethod.GET, path="/show-students")
	public ModelAndView display(ModelAndView mav) {
		List <Student> students= studentService.displayStudent();
		if (students.isEmpty()==true) {
			mav.setViewName("empty-student-info");
			return mav;
		}
		else {
			mav.setViewName("student-info");
			mav.addObject("studentInfo",students);
			return mav;
		}		
	}

	@RequestMapping (method = RequestMethod.GET,path = "/show-form")
	public String showStudentForm() {
		return "student-form";		
	}

	@RequestMapping(method = RequestMethod.GET, path = "/delete-student")
	public String delete(@RequestParam("id") Integer id) {
		System.out.println("method called with id is: " + id);
		studentService.deleteStudent(id);
		return "redirect:show-students";
	}

	@RequestMapping(method = RequestMethod.POST, path = "/update-student")
	public String update(@RequestParam("id") Integer id, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName,
			@RequestParam("course") String course,
			@RequestParam("country") String country) {
		System.out.println("Update method is called on id: " + id);
		if (studentService.updateStudent(id, firstName, lastName, course,country)) {
			System.out.println("Student detail updated");
		} else {
			System.out.println("Student detail not updated");
		}

		return "redirect:show-students";
	}

	@RequestMapping(method = RequestMethod.GET, path = "/open-update-form")
	public ModelAndView updateForm(@RequestParam("id") Integer id, ModelAndView mav) {
		Student student = studentService.findStudent(id);
		if(student != null) {
			mav.setViewName("update-student-form");
			mav.addObject("studentInfo", student);
			return mav;
		} else {
			mav.setViewName("student-not-found");
			return mav;
		}
	}

	@RequestMapping(value = "/403")
	public ModelAndView accesssDenied(Principal user) {

		ModelAndView model = new ModelAndView();

		if (user != null) {
			model.addObject("msg", "Hi " + user.getName() 
			+ ", you do not have permission to access this page!");
		} else {
			model.addObject("msg", 
					"You do not have permission to access this page!");
		}

		model.setViewName("403");
		return model;

	}
}
