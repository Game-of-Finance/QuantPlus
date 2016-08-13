package web.servlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import web.model.Student;
import web.biz.IStudentMangService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("StudentAction.do")
public class StudentAction extends MultiActionController{
    @Autowired
    private IStudentMangService studentManagementService;

    @RequestMapping(params = "method=HandleStudentRegistrationFormSubmit")
    protected ModelAndView HandleStudentRegistrationFormSubmit(HttpServletRequest request
            , HttpServletResponse response) {
        Student student = new Student();
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String college = request.getParameter("college");

        student.setName(name);
        student.setPassword(password);
        student.setCollege(college);

        studentManagementService.addStudent(student);
        return new ModelAndView("StudentRegistered.jsp");
    }
}