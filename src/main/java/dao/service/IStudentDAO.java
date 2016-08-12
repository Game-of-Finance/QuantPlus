package dao.service;

import model.Student;

public interface IStudentDAO {

    /**
     * Save Student into database
     * @param student
     */
    void saveStudent(Student student);

}