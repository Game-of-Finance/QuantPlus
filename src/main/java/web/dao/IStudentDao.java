package web.dao;

import web.model.register.Student;

public interface IStudentDao {

    /**
     * Save Student into database
     *
     * @param student
     */
    void saveStudent(Student student);

}