package web.dao;

import web.model.Student;

public interface IStudentDao {

    /**
     * Save Student into database
     * @param student
     */
    void saveStudent(Student student);

}