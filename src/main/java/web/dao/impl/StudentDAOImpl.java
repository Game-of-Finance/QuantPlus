package web.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import web.dao.IStudentDao;
import web.model.Student;

@SuppressWarnings("restriction")
@Repository("studentDAO")
@Transactional
public class StudentDaoImpl implements IStudentDao {


    public void saveStudent(Student student){
        System.out.println("student");
        System.out.println(student.getName());
        System.out.println(student.getCollege());
    }

}