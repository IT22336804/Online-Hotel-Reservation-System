package reservations;

import java.sql.ResultSet;
import java.util.ArrayList;

import Configurations.DBConnect;

public class ReservationDB {
	
	private static ResultSet rs;
	
	public static ArrayList<Integer> getUnavailableRooms(String startDate, String endDate){
		
		ArrayList<Integer> roomID = new ArrayList<Integer>();
		
		try {
			
			String sql = "select roomID from reservation where ('"+startDate+"'>= startDate or '"+endDate+"' >= start) and ('"+startDate+"'<= endDate or '"+endDate+"' <= end);";
			rs = DBConnect.getDBConnection().executeQuery(sql);
			
			while(rs.next()) {
				roomID.add(rs.getInt(1));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return roomID;
		
	}
	
}
