package biz.impl;

import biz.service.IStudentMangService;
import dao.service.IStudentDAO;
import model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class IStudentMangImpl implements IStudentMangService {

    @Autowired
    private IStudentDAO studentDAO;

    // @Transactional这一annotation来对事务进行声明式的设定。
    // 具体而言，就是在类或者方法前添加@Transactional并传入属性参数以获取所需要的Transaction特性。

    // 当前方法必须在Transaction中运行。
    // 如果存在已经定义的Transaction，则该方法在已定义的Transaction中运行；
    // 如果不存在已经定义的Transaction，则该方法新开一个Transaction并在其中运行。
    @Transactional(propagation=Propagation.REQUIRED)
    public void addStudent(Student student) {
        //逻辑层调用数据层
        studentDAO.saveStudent(student);
    }
}