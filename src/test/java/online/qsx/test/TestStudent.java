package online.qsx.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.github.pagehelper.PageInfo;

import online.qsx.model.StudentModel;
import online.qsx.service.StudentServer;

public class TestStudent {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext-mybatis.xml","classpath:applicationContext-service.xml");
		StudentServer studentServer=ac.getBean(StudentServer.class);
		PageInfo<StudentModel> pageinfo= studentServer.getStudents(null, 2, 3);
		for (StudentModel studentModel : pageinfo.getList()) {
			System.out.println(studentModel);
		}
	}
}
