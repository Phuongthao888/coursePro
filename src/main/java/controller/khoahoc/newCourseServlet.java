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

import database.JDBCutils;
import database.courseDAO;
import model.course;

/**
 * Servlet implementation class newCourseServlet
 */
@WebServlet("/newCourseServlet")
public class newCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newCourseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/khoahoc/addCourse.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = null; // connect SQL
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			conn = JDBCutils.getConnection();
			// xử lý tham số từ form
//			int id = Integer.parseInt(request.getParameter("id"));
			int packages = Integer.parseInt(request.getParameter("packages"));
			String namePackages = request.getParameter("namePackages");
			String description = request.getParameter("description");
			Double costPrice = Double.parseDouble(request.getParameter("costPrice"));
			Double salePrice = Double.parseDouble(request.getParameter("salePrice"));
			String payment = request.getParameter("payment");
			int videoID = Integer.parseInt(request.getParameter("videoID"));
			String tenVideo = request.getParameter("tenVideo");
			String video = request.getParameter("video");
			
			course course = new course(packages, namePackages, description, costPrice, salePrice, payment, videoID, tenVideo, video); // tạo đối tượng
			// thêm đối tượng vào CSDL
			courseDAO.insertCourse(course);
			request.getRequestDispatcher("admin.jsp").forward(request, response);
		} catch (SQLException ex) {
			ex.printStackTrace();
			request.setAttribute("errorString", "");
			// Forward to an error page or handle the error accordingly
			request.getRequestDispatcher("/error/errorID.jsp").forward(request, response);
			Logger.getLogger(controller.Log.LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(controller.Log.LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					Logger.getLogger(controller.Log.LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}
		}
	}

}
