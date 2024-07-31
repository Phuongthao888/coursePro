package controller.Log;

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

import database.DButils;
import database.JDBCutils;
import model.admin;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/Login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con;
		try {
			con = JDBCutils.getConnection();
			String adminName = request.getParameter("adminName");
			String password = request.getParameter("password");
			admin adm = new admin(adminName,password);
			admin a = DButils.findAdmin(con, adm.getAdminName(),adm.getPassword());
			
			
			if(a != null) {
				admin admin = new admin(a);
				request.setAttribute("adminName", "Chào bạn: " +admin.getAdminName());
				request.getRequestDispatcher("/admin.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("/admin.jsp").forward(request, response);
				}
			
		}catch(SQLException ex) {
			Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

}
