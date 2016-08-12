package dao.impl;

import dao.service.IStudentDAO;
import model.Student;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@SuppressWarnings("restriction")
@Repository("studentDAO")
@Transactional
public class StudentDAOImpl implements IStudentDAO {


    public void saveStudent(Student student){
        System.out.println("student");
        System.out.println(student.getName());
        System.out.println(student.getCollege());
    }

}