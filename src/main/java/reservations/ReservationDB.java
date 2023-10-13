package reservations;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Configurations.DBConnect;

public class ReservationDB {
	
	private static ResultSet rs;
	
//	public static ArrayList<Integer> getUnavailableRooms(String startDate, String endDate){
//		
//		ArrayList<Integer> roomID = new ArrayList<Integer>();
//		
//		try {
//			
//			String sql = "select roomID from reservation where ('"+startDate+"'>= startDate or '"+endDate+"' >= startDate) and ('"+startDate+"'<= endDate or '"+endDate+"' <= endDate)";
//			rs = DBConnect.getDBConnection().executeQuery(sql);
//			
//			while(rs.next()) {
//				roomID.add(rs.getInt(1));
//			}
//			
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		return roomID;
//		
//	}
	
	
	public static boolean makeReservation(int rid, String startDate, String endDate, double pay, int guests) {
		
		boolean isSuccess = false;
		
		String sql = "insert into reservation values (0, '"+startDate+"', '"+endDate+"', datediff('"+endDate+"', '"+startDate+"') * '"+pay+"', '"+guests+"', '"+rid+"', 1)";
		try {
			int ret = DBConnect.getDBConnection().executeUpdate(sql);
			
			if(ret > 0) {
				isSuccess = true;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
}
