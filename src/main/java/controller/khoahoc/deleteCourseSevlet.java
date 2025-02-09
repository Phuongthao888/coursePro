package controller.khoahoc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.JDBCutils;
import database.courseDAO;

/**
 * Servlet implementation class deleteCourse
 */
@WebServlet("/deleteCourseServlet")
public class deleteCourseSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteCourseSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection con = null;

		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			con = JDBCutils.getConnection();

			// Get the ID value from the request
			String packages = request.getParameter("packages");

			// Call the deleteKhoaById method from khoaDButils
			courseDAO.deleteCourseById(con, packages);

			// Redirect to the page displaying the list after deletion
			response.sendRedirect(request.getContextPath() + "/admin.jsp");
		} catch (SQLException ex) {
			ex.printStackTrace();
			request.setAttribute("errorString", "");
			// Forward to an error page or handle the error accordingly
			request.getRequestDispatcher("/error/errorPage.jsp").forward(request, response);
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
					// Handle closing connection error if needed
				}
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("./admin.jsp").forward(request, response);
	}

}
