package online.qsx.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import online.qsx.mapper.StudentModelMapper;
import online.qsx.model.StudentModel;
import online.qsx.model.StudentModelCriteria;
import online.qsx.model.StudentModelCriteria.Criteria;
import online.qsx.service.StudentServer;

@Service
public class StudentServerImpl implements StudentServer {

	@Autowired
	private StudentModelMapper studentModelMapper;

	@Override
	public PageInfo<StudentModel> getStudents(StudentModel studentModel, int pageNum, int pageSize) {
		StudentModelCriteria example = new StudentModelCriteria();
		if (studentModel != null) {
			Criteria criteria = example.createCriteria();
			if (studentModel.getStudentname() != null && studentModel.getStudentname().trim().length() > 0) {
				criteria.andStudentnameLike("%" + studentModel.getStudentname() + "%");
			}
			if (studentModel.getStudentno() != null && studentModel.getStudentno() > 0) {
				criteria.andStudentnoEqualTo(studentModel.getStudentno());
			}
		}
		PageHelper.startPage(pageNum, pageSize);
		return new PageInfo<>(studentModelMapper.selectByExample(example));
	}

}
