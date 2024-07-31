package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.admin;


public class DButils {
	public static admin findAdmin(Connection con, String adminName, String password) throws SQLException {
		String sql = "SELECT * FROM admin WHERE adminName=? AND password=?";

		try (PreparedStatement pstm = con.prepareStatement(sql)) {
			pstm.setString(1, adminName);
			pstm.setString(2, password);

			try (ResultSet rs = pstm.executeQuery()) {
				if (rs.next()) {
					admin admin = new admin();
					admin.setAdminName(rs.getString("adminName"));
					admin.setPassword(rs.getString("password"));
					admin.setAdminName(adminName);
					admin.setPassword(password);
					return admin;
				}
			}
		}
		return null;
	}

	public static admin findAdmin(Connection con, String adminName) throws SQLException {
		String sql = "SELECT * FROM admin WHERE adminName=?";

		try (PreparedStatement pstm = con.prepareStatement(sql)) {
			pstm.setString(1, adminName);

			try (ResultSet rs = pstm.executeQuery()) {
				if (rs.next()) {
					admin admin = new admin();
					admin.setAdminName(rs.getString("adminName"));
					admin.setPassword(rs.getString("password"));
					admin.setAdminName(adminName);
					admin.setPassword(rs.getString("Password"));
					return admin;
				}
			}
		}
		return null;
	}
}
