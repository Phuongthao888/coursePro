package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import controller.khoahoc.newCourseServlet;
import model.course;

public class courseDAO {
	public static List<course> selectAllCourse(Connection conn) throws SQLException {
		String sql = "SELECT * FROM course";

		try (PreparedStatement ps = conn.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
			List<course> courseList = new ArrayList<>();

			while (rs.next()) {
				course course = new course();
				course.setID(rs.getInt("id"));
				course.setPackages(rs.getInt("packages"));
				course.setNamePackages(rs.getString("namePackages"));
				course.setDescription(rs.getString("description"));
				course.setCostPrice(rs.getDouble("costPrice"));
				course.setSalePrice(rs.getDouble("salePrice"));
				course.setPayment(rs.getString("payment"));
				course.setVideoID(rs.getInt("videoID"));
				course.setTenVideo(rs.getNString("tenVideo"));
				course.setVideo(rs.getNString("video"));

				courseList.add(course);
			}

			return courseList;
		}
	}

	public static List<course> selectHoaDonByPackages(Connection conn, int packages) throws SQLException {
		List<course> courseList = new ArrayList<>();
		String sql = "SELECT * FROM course WHERE packages = ?";

		try (PreparedStatement pstm = conn.prepareStatement(sql)) {
			pstm.setInt(1, packages);

			try (ResultSet rs = pstm.executeQuery()) {
				while (rs.next()) {
					int id = rs.getInt("id");
					packages = rs.getInt("packages");
					String namePackages = rs.getString("namePackages");
					String description = rs.getString("description");
					Double costPrice = rs.getDouble("costPrice");
					Double salePrice = rs.getDouble("salePrice");
					String payment = rs.getString("payment");
					int videoID = rs.getInt("videoID");
					String tenVideo = rs.getNString("tenVideo");
					String video = rs.getNString("video");
					course course = new course(id, packages, namePackages, description, costPrice, salePrice, payment,
							videoID, tenVideo, video);
					courseList.add(course);
				}
			}
		}
		return courseList;
	}

	public static int insertCourse(course course) throws SQLException, ClassNotFoundException {
		Connection con = null;
		int rows = 0;
		try {
			con = JDBCutils.getConnection();
			String sql = "INSERT INTO course (packages, namePackages, description, costPrice, salePrice, payment, videoID, tenVideo, video) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

			PreparedStatement pstm = con.prepareStatement(sql);
//			pstm.setInt(1, course.getID());
			pstm.setInt(1, course.getPackages());
			pstm.setString(2, course.getNamePackages());
			pstm.setString(3, course.getDescription());
			pstm.setDouble(4, course.getCostPrice());
			pstm.setDouble(5, course.getSalePrice());
			pstm.setString(6, course.getPayment());
			pstm.setInt(7, course.getVideoID());
			pstm.setString(8, course.getTenVideo());
			pstm.setString(9, course.getVideo());
			rows = pstm.executeUpdate();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException ex) {
					Logger.getLogger(newCourseServlet.class.getName()).log(Level.SEVERE, null, ex);
				}
			}
		}
		return rows;
	}

	public static course selectCourseById(Connection conn, int packages) throws SQLException {
		String sql = "SELECT * FROM course WHERE packages = ?";

		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setInt(1, packages);

			try (ResultSet rs = ps.executeQuery()) {
				if (rs.next()) {
					return new course(rs.getInt("packages"), rs.getString("namePackages"), rs.getString("description"),
							rs.getDouble("costPrice"), rs.getDouble("salePrice"), rs.getString("payment"));
				}
			}
		}
		return null;
	}
	public static course selectVideoById(Connection conn, int videoID) throws SQLException {
		String sql = "SELECT * FROM course WHERE videoID = ?";

		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setInt(1, videoID);

			try (ResultSet rs = ps.executeQuery()) {
				if (rs.next()) {
					return new course(rs.getInt("videoID"), rs.getString("tenVideo"), rs.getString("video"));
				}
			}
		}
		return null;
	}

	public static void updateCourse(course course) throws SQLException {
		String sql = "UPDATE course SET packages=?, namePackages=?, description=?, costPrice=?, salePrice=?, payment=? WHERE packages=?";

		try (Connection conn = JDBCutils.getConnection(); PreparedStatement pstm = conn.prepareStatement(sql)) {
			pstm.setInt(1, course.getPackages());
			pstm.setString(2, course.getNamePackages());
			pstm.setString(3, course.getDescription());
			pstm.setDouble(4, course.getCostPrice());
			pstm.setDouble(5, course.getSalePrice());
			pstm.setString(6, course.getPayment());
			pstm.setInt(7, course.getPackages());
			pstm.executeUpdate();
		}
	}
	public static void updateVideo(course course) throws SQLException {
		String sql = "UPDATE course SET videoID=?, tenVideo=?, video=? WHERE videoID=?";

		try (Connection conn = JDBCutils.getConnection(); PreparedStatement pstm = conn.prepareStatement(sql)) {
			
			pstm.setInt(1, course.getVideoID());
			pstm.setString(2, course.getTenVideo());
			pstm.setString(3, course.getVideo());
			pstm.setInt(4, course.getVideoID());
			pstm.executeUpdate();
		}
	}
	public static void deleteCourseById(Connection con, String packages) throws SQLException {
		String sql = "delete from course where packages=?";
		PreparedStatement pstm = con.prepareStatement(sql);
		pstm.setString(1, packages);
		pstm.executeUpdate();
	}
}
