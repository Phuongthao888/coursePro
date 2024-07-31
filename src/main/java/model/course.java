package model;

public class course {
	private int ID;
	private int packages;
	private String namePackages;
	private String description;
	private double costPrice;
	private double salePrice;
	private String payment;
	private int videoID;
	private String tenVideo;
	private String video;
	
	public course() {
		super();
	}

	public course(int videoID, String tenVideo, String video) {
		super();
		this.videoID = videoID;
		this.tenVideo = tenVideo;
		this.video = video;
	}

	public course(int packages, String namePackages, String description, double costPrice, double salePrice,
			String payment) {
		super();
		this.packages = packages;
		this.namePackages = namePackages;
		this.description = description;
		this.costPrice = costPrice;
		this.salePrice = salePrice;
		this.payment = payment;
	}

	public course(int packages, String namePackages, String description, double costPrice, double salePrice,
			String payment, int videoID, String tenVideo, String video) {
		super();
		this.packages = packages;
		this.namePackages = namePackages;
		this.description = description;
		this.costPrice = costPrice;
		this.salePrice = salePrice;
		this.payment = payment;
		this.videoID = videoID;
		this.tenVideo = tenVideo;
		this.video = video;
	}

	public course(int iD, int packages, String namePackages, String description, double costPrice, double salePrice,
			String payment, int videoID, String tenVideo, String video) {
		super();
		ID = iD;
		this.packages = packages;
		this.namePackages = namePackages;
		this.description = description;
		this.costPrice = costPrice;
		this.salePrice = salePrice;
		this.payment = payment;
		this.videoID = videoID;
		this.tenVideo = tenVideo;
		this.video = video;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getPackages() {
		return packages;
	}

	public void setPackages(int packages) {
		this.packages = packages;
	}

	public String getNamePackages() {
		return namePackages;
	}

	public void setNamePackages(String namePackages) {
		this.namePackages = namePackages;
	}

	public double getCostPrice() {
		return costPrice;
	}

	public void setCostPrice(double costPrice) {
		this.costPrice = costPrice;
	}

	public double getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(double salePrice) {
		this.salePrice = salePrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String discription) {
		this.description = discription;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public int getVideoID() {
		return videoID;
	}

	public void setVideoID(int videoID) {
		this.videoID = videoID;
	}

	public String getTenVideo() {
		return tenVideo;
	}

	public void setTenVideo(String tenVideo) {
		this.tenVideo = tenVideo;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}
	
}
