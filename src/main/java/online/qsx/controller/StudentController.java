package online.qsx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import online.qsx.model.StudentModel;
import online.qsx.service.StudentServer;

@Controller
@RequestMapping(value = "student")
public class StudentController {

	@Autowired
	private StudentServer studentServer;

	//http://localhost:80/SSM/student/list
	@RequestMapping(value = "list", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView sutdents(StudentModel studentModel, @RequestParam(defaultValue = "1") int pageNum,ModelAndView modelAndView) {
		modelAndView.addObject("pageinfo", studentServer.getStudents(studentModel, pageNum, 5));
		modelAndView.setViewName("index");
		return modelAndView;
	}
}
