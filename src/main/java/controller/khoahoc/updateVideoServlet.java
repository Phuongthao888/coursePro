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
 * Servlet implementation class updateVideoServlet
 */
@WebServlet("/updateVideoServlet")
public class updateVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateVideoServlet() {
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
		int videoID = Integer.parseInt(request.getParameter("videoID"));
		course course = new course();
		try {
			Connection con = JDBCutils.getConnection();
			course = courseDAO.selectVideoById(con, videoID);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("errorString", errorString);
		request.setAttribute("updateVideo", course);
		request.getRequestDispatcher("/khoahoc/updateVideo.jsp").forward(request, response);
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
			
			int videoID = Integer.parseInt(request.getParameter("videoID"));
			String tenVideo = request.getParameter("tenVideo");
			String video = request.getParameter("video");
			course course = new course(videoID, tenVideo, video);
			courseDAO.updateVideo(course);
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
