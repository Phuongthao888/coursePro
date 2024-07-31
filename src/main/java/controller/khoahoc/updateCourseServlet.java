package controller.khoahoc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Log.LoginServlet;
import database.JDBCutils;
import database.courseDAO;
import model.course;


/**
 * Servlet implementation class updateCourseServlet
 */
@WebServlet("/updateCourseServlet")
public class updateCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateCourseServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String errorString = null;
		int packages = Integer.parseInt(request.getParameter("packages"));
		course course = new course();
		try {
			Connection con = JDBCutils.getConnection();
			course = courseDAO.selectCourseById(con, packages);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("errorString", errorString);
		request.setAttribute("updateCourse", course);
		request.getRequestDispatcher("/khoahoc/updateCourse.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection con = null; // connect SQL
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			con = JDBCutils.getConnection();
			int packages = Integer.parseInt(request.getParameter("packages"));
			String namePackages = request.getParameter("namePackages");
			String description = request.getParameter("description");
			Double costPrice = Double.parseDouble(request.getParameter("costPrice"));
			Double salePrice = Double.parseDouble(request.getParameter("salePrice"));
			String payment = request.getParameter("payment");
			course course = new course(packages, namePackages, description, costPrice, salePrice, payment);
			courseDAO.updateCourse(course);
			request.getRequestDispatcher("./admin.jsp").forward(request, response);
		} catch (SQLException ex) {
			Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException ex) {
					Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}
		}
		//doGet(request, response);
	}

}
