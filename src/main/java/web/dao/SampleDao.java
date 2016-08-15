package web.dao;

import web.model.register.Student;

@Deprecated
public interface SampleDao {

    /**
     * Save Student into database
     *
     * @param student
     */
    void saveStudent(Student student);

}