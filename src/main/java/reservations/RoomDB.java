package reservations;

import java.sql.ResultSet;
import java.util.ArrayList;

import Configurations.DBConnect;

public class RoomDB {
	
	private static ResultSet rs;
	
	public static ArrayList<Room> getRoomDetails(ArrayList<Integer> roomID){
		
		ArrayList<Room> rooms = new ArrayList<Room>();
		
		try {
			
			String sql;
			
			if(!roomID.isEmpty()) {
				for(Integer rid : roomID) {
					sql = "select * from room where '"+rid+"' not in (select rid from room)";
					rs = DBConnect.getDBConnection().executeQuery(sql);
				}
			}
			else {
				sql = "select * from room";
				rs = DBConnect.getDBConnection().executeQuery(sql);
			}
			
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
