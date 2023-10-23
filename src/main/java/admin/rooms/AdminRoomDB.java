package admin.rooms;

import java.sql.ResultSet;
import java.util.ArrayList;

import Configurations.DBConnect;
import reservations.Room;

public class AdminRoomDB {
	
	private static ResultSet rs;
	
	public static boolean insertRoomDetails(String rname, String rdesc, String maxOccup, double price, String imgLoc) {
		
		boolean isSuccess = false;
		
		try {
			
			String sql = "insert into room values(0, '"+rname+"', '"+rdesc+"', '"+maxOccup+"', '"+price+"', '"+imgLoc+"')";
			int ret = DBConnect.getDBConnection().executeUpdate(sql);
			
			if(ret > 0) {
				isSuccess = true;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	
	public static ArrayList<Room> getRoomDetails(){
		
		ArrayList<Room> roomsdet = new ArrayList<>();
		
		try {
			
			String sql = "select * from room";
			rs = DBConnect.getDBConnection().executeQuery(sql);
			
			while(rs.next()) {
				int rid = rs.getInt(1);
				String rname = rs.getString(2);
				String rdesc = rs.getString(3);
				String maxoccupants = rs.getString(4);
				double price = rs.getDouble(5);
				String imgloc = rs.getString(6);
				
				roomsdet.add(new Room(rid, rname, rdesc, maxoccupants, price, imgloc));
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return roomsdet;
		
	}
	
	
	
	public static boolean updateRoomDetails(int rid, String rname, String rdesc, String maxOccup, double price, String imgLoc) {
		
		boolean isSuccess = false;
		
		try {
			
			String sql = "update room set room_name = '"+rname+"', room_desc = '"+rdesc+"', max_occupants = '"+maxOccup+"', price_per_night = '"+price+"', image_location = '"+imgLoc+"'"
					+ "where rid = '"+rid+"'";
			
			int ret = DBConnect.getDBConnection().executeUpdate(sql);
			
			if(ret > 0) {
				isSuccess = true;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	
	public static boolean deleteRoomDetails(int rid) {
		
		boolean isSuccess = false;
		
		try {
			
			String sql = "delete from room where rid = '"+rid+"'";
			int ret = DBConnect.getDBConnection().executeUpdate(sql);
			
			if(ret > 0) {
				isSuccess = true;
			}
	
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
}
