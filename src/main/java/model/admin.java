package model;

public class admin {
	private String adminID;
	private	String adminName;
	private String password;
	private String resetPassword;
	private int phoneNumebr;
	private String address;
	private String gmail;
	
	public admin() {
		super();
	}

	public admin(String a) {
		super();
		this.adminID = a;
	}
	public admin(admin admin) {
		super();
		this.adminID = admin.adminID;
		this.password =admin.password;
	}
	public admin(String adminID, String adminName) {
		super();
		this.adminID = adminID;
		this.adminName = adminName;
	}

	public admin(String adminID, String adminName, String password, String resetPassword, int phoneNumebr,
			String address, String gmail) {
		super();
		this.adminID = adminID;
		this.adminName = adminName;
		this.password = password;
		this.resetPassword = resetPassword;
		this.phoneNumebr = phoneNumebr;
		this.address = address;
		this.gmail = gmail;
	}

	public String getAdminID() {
		return adminID;
	}

	public void setAdminID(String adminID) {
		this.adminID = adminID;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getResetPassword() {
		return resetPassword;
	}

	public void setResetPassword(String resetPassword) {
		this.resetPassword = resetPassword;
	}

	public int getPhoneNumebr() {
		return phoneNumebr;
	}

	public void setPhoneNumebr(int phoneNumebr) {
		this.phoneNumebr = phoneNumebr;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	
}
