package com.customer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Configurations.DBConnect;

public class CustomerDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static int validate(String username , String password){
		
		int id = 0;
		try {	
			String sql = "select id from customer where username = '"+username+"' and password = '"+password+"'";
			
			rs = DBConnect.getDBConnection().executeQuery(sql);
			
			if(rs.next()) {
				 id = rs.getInt(1);

			}	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return id;
			
		}
	
	public static boolean insertcustomer(String name , String email , String phone ,String username , String password) {
		boolean isSuccess = false;
		
		try {

			String sql = "Insert into customer values (0 ,'"+name+"' , '"+email+"' , '"+phone+"' , '"+username+"' , '"+password+"')";

			
			int rs = DBConnect.getDBConnection().executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	public static boolean updatecustomer(String id ,String name , String email , String phone , String username , String password) {
		boolean isSuccess = false;
		
		try {

			
			String sql = "update customer set name='"+name+"',email='"+email+"' , phone='"+phone+"',username='"+username+"',password='"+password+"'"
			+ "where id='"+id+"'"; 
			

			int rs = DBConnect.getDBConnection().executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static ArrayList<Customer>getCustomerDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Customer>cus = new ArrayList<>();
		
		try {

			
			String sql = "select * from Customer where id='"+convertedID+"'";

			 rs = DBConnect.getDBConnection().executeQuery(sql);
			
			//will return a boolean value
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Customer c = new Customer(id , name , email , phone , username , password);
				cus.add(c);
			}
			
		}
		catch(Exception e) {
			
		}
		
		return cus;
	}

	public static boolean deleteCustomer(String id) {
		boolean isSuccess = false;
	
		int convId = Integer.parseInt(id);
	
		try {

		
			String sql = "delete from Customer where id = '"+convId+"'";

		
			int result = DBConnect.getDBConnection().executeUpdate(sql);
		
			if(result > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
		return isSuccess;
	}

	

	
	
}
