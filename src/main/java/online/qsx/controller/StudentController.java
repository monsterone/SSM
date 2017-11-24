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

	// http://localhost:80/SSM/student/home
	@RequestMapping(value = "home", method = { RequestMethod.GET, RequestMethod.POST })
	public String to_home() {
		return "home";
	}
	
	@RequestMapping(value = "to_list", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView to_list(StudentModel studentModel, @RequestParam(defaultValue = "1") int pageNum,ModelAndView modelAndView) {
		modelAndView.addObject("pageinfo", studentServer.getStudents(studentModel, pageNum, 5));
		modelAndView.setViewName("index");
		return modelAndView;
	}

	@RequestMapping(value = "to_info", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView to_info(StudentModel studentModel, ModelAndView modelAndView) {
		modelAndView.addObject("obj", studentServer.getStudent(studentModel));
		modelAndView.setViewName("info");
		return modelAndView;
	}

	
	@RequestMapping(value = "to_edit", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView to_edit(StudentModel studentModel, ModelAndView modelAndView) {
		modelAndView.addObject("obj", studentServer.getStudent(studentModel));
		modelAndView.setViewName("edit");
		return modelAndView;
	}
	@RequestMapping(value = "do_edit", method = { RequestMethod.GET, RequestMethod.POST })
	public String do_edit(StudentModel studentModel) {
		studentServer.edit(studentModel);
		return "redirect:/student/to_list";
	}
	
	
	@RequestMapping(value = "to_save", method = { RequestMethod.GET, RequestMethod.POST })
	public String to_save() {
		return "save";
	}
	@RequestMapping(value = "do_save", method = { RequestMethod.GET, RequestMethod.POST })
	public String do_save(StudentModel studentModel) {
		studentServer.save(studentModel);
		return "redirect:/student/to_list";
	}
	
	@RequestMapping(value = "do_remove", method = { RequestMethod.GET, RequestMethod.POST })
	public String do_remove(StudentModel studentModel) {
		studentServer.remove(studentModel);
		return "redirect:/student/to_list";
	}
}
