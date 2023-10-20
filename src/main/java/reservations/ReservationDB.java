package reservations;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Configurations.DBConnect;

public class ReservationDB {
	
	private static ResultSet rs;
		
	
	public static boolean makeReservation(int rid, String startDate, String endDate, double pay, int guests) {
		
		boolean isSuccess = false;
		
		String sql = "INSERT INTO reservation VALUES (0, '"+startDate+"', '"+endDate+"', datediff('"+endDate+"', '"+startDate+"') * '"+pay+"', '"+guests+"', '"+rid+"', 1)";
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
	
	
	public static ArrayList<Reservation> viewReservation() {
		
		ArrayList<Reservation> reservs = new ArrayList<>();
		
		String sql = "SELECT * FROM reservation re, room ro WHERE re.roomID = ro.rid AND cusID = 1";
		
		try {
			
			rs = DBConnect.getDBConnection().executeQuery(sql);
			
			while(rs.next()) {
				
				int resID = rs.getInt(1);
				String startDate = rs.getString(2);
				String endDate = rs.getString(3);
				double pay = rs.getDouble(4);
				int guests = rs.getInt(5);
				int roomID = rs.getInt(6);
				int cid = rs.getInt(7);
				
				String rName = rs.getString(9);
				String rDesc = rs.getString(10);
				double price = rs.getDouble(12);
				String img = rs.getString(13);
				
				
				reservs.add(new Reservation(resID, startDate, endDate, pay, guests, roomID, rName, rDesc, img, price, cid));
				
			}
			
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
		}
			
		
		return reservs;
	
	}
	
	
	
	public static boolean updateReservation(int resId, String sDate, String eDate, double price, int guests) {
		
		boolean isSuccess = false;
		
		String sql = "UPDATE reservation SET startDate = '"+sDate+"', endDate = '"+eDate+"', payment = datediff('"+eDate+"', '"+sDate+"') * '"+price+"', noOfGuest = '"+guests+"' WHERE resID = '"+resId+"'";
		try {
			int ret = DBConnect.getDBConnection().executeUpdate(sql);
			
			if(ret > 0) {
				isSuccess = true;
			}
			
		} 
		catch (SQLException e) {
	
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
}
