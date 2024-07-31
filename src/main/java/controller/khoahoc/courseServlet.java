package controller.khoahoc;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DButils;
import database.JDBCutils;
import database.courseDAO;
import model.course;

/**
 * Servlet implementation class courseServlet
 */
@WebServlet("/courseServlet")
public class courseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public courseServlet() {
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
        List<course> courseList = new ArrayList<>();

        try {
            Connection con = JDBCutils.getConnection();
            courseList = courseDAO.selectAllCourse(con);
        } catch (Exception e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }

        // Nhóm theo mã hóa đơn
        Map<Integer, List<course>> courseMap = new HashMap<>();

        for (course course : courseList) {
            int packages = course.getPackages();
            courseMap.computeIfAbsent(packages, k -> new ArrayList<>()).add(course);
        }

        request.setAttribute("errorString", errorString);
        request.setAttribute("courseMap", courseMap);
        request.getRequestDispatcher("/courseList.jsp").forward(request, response);
    }

}
