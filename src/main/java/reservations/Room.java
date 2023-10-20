package reservations;

public class Room {
	private int rID;
	private String roomName;
	private String descript;
	private String maxOccupants;
	private String imageLocation;
	private double price;
	
	public Room(int rID, String roomName, String descript, String maxOccupants, double price, String imageLocation) {
		this.rID = rID;
		this.roomName = roomName;
		this.descript = descript;
		this.maxOccupants = maxOccupants;
		this.imageLocation = imageLocation;
		this.price = price;
	}

	public int getrID() {
		return rID;
	}

	public String getRoomName() {
		return roomName;
	}

	public String getDescript() {
		return descript;
	}

	public String getMaxOccupants() {
		return maxOccupants;
	}

	public String getImageLocation() {
		return imageLocation;
	}

	public double getPrice() {
		return price;
	}
	
	
}
