package online.qsx.service;

import com.github.pagehelper.PageInfo;

import online.qsx.model.StudentModel;

public interface StudentServer {

	PageInfo<StudentModel> getStudents(StudentModel studentModel, int pageNum, int pageSize);
	
}
