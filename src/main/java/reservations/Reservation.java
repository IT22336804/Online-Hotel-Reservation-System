package reservations;

public class Reservation {
	
	private int resID;
	private String startDate;
	private String endDate;
	private double payment;
	private int guests;
	private int roomID;
	private String roomName;
	private String descript;
	private String imageLocation;
	private double price;
	private int cid;
	

	public Reservation(int resID, String startDate, String endDate, double payment, int guests, int roomID, String roomName,
			String descript, String imageLocation, double price, int cid) {
		this.resID = resID;
		this.startDate = startDate;
		this.endDate = endDate;
		this.payment = payment;
		this.guests = guests;
		this.roomID = roomID;
		this.roomName = roomName;
		this.descript = descript;
		this.imageLocation = imageLocation;
		this.price = price;
		this.cid = cid;
	}


	public int getResID() {
		return resID;
	}


	public String getStartDate() {
		return startDate;
	}


	public String getEndDate() {
		return endDate;
	}


	public double getPayment() {
		return payment;
	}


	public int getGuests() {
		return guests;
	}


	public int getRoomID() {
		return roomID;
	}


	public String getRoomName() {
		return roomName;
	}


	public String getDescript() {
		return descript;
	}


	public String getImageLocation() {
		return imageLocation;
	}


	public double getPrice() {
		return price;
	}


	public int getCid() {
		return cid;
	}

	
	
	
	
}
