package controller.khoahoc;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.JDBCutils;
import database.courseDAO;
import model.course;

/**
 * Servlet implementation class viewCourseServlet
 */
@WebServlet("/viewCourseServlet")
public class viewCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewCourseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        
        String errorString = null;
        int packages = Integer.parseInt(request.getParameter("packages"));
        List<course> courseList = new ArrayList<>();

        try {
            Connection con = JDBCutils.getConnection();
            courseList = courseDAO.selectHoaDonByPackages(con, packages);
        } catch (Exception e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        
        request.setAttribute("errorString", errorString);
        request.setAttribute("courseList", courseList);
        request.getRequestDispatcher("/viewCourse.jsp").forward(request, response);
    }

}
