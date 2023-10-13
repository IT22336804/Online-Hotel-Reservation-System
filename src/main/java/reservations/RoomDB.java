package reservations;

import java.sql.ResultSet;
import java.util.ArrayList;

import Configurations.DBConnect;

public class RoomDB {
	
	private static ResultSet rs;
	
	public static ArrayList<Room> getRoomDetails(String startDate, String endDate){
		
		ArrayList<Room> rooms = new ArrayList<Room>();
		
		try {
			
		
			String sql = "select * from room where rid not in (select roomID "
							+ "from reservation "
							+ "where ('"+startDate+"'>= startDate or '"+endDate+"' >= startDate) and ('"+startDate+"'<= endDate or '"+endDate+"' <= endDate))";
			
			rs = DBConnect.getDBConnection().executeQuery(sql);
				
			
			while(rs.next()) {
				int rid = rs.getInt(1);
				String roomName = rs.getString(2);
				String roomDesc = rs.getString(3);
				String maxOccupants = rs.getString(4);
				double price = rs.getDouble(5);
				String imgLocation = rs.getString(6);
				
				rooms.add(new Room(rid, roomName, roomDesc, maxOccupants, price, imgLocation));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return rooms;
		
	}
	
}
