package web.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import web.dao.SampleDao;
import web.model.register.Student;

@SuppressWarnings("restriction")
@Repository("studentDAO")
@Transactional
@Deprecated
public class StudentDaoImpl implements SampleDao {


    public void saveStudent(Student student) {
        System.out.println("student");
        System.out.println(student.getName());
        System.out.println(student.getCollege());
    }

}