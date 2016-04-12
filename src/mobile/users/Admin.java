package mobile.users;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import mobile.exceptions.InvalidParameterException;
import mobile.exceptions.NotValidUserNameException;

public class Admin extends Person {
	
	private int userTypeId = 2;
	
	public Admin(String username, String email, String phone, String pass) throws InvalidParameterException {
		super(username, email, phone, pass);
		
	}
	
	public void deleteUser(Connection con, String userName) throws SQLException{
		String prepQuery = "DELETE FROM mydb.user WHERE (username=?);";
		
		String query = "DELETE FROM mydb.user WHERE (username='" + userName + "');";
		
		Statement stmt = con.createStatement();
		int result = stmt.executeUpdate(query);

		System.out.println(result + " rows affected.");
	}
	
	public void deleteAd(Connection con, int ad_id) throws SQLException{
		String query = "DELETE FROM mydb.ad WHERE (ad_id=" + ad_id + ");";
		
		Statement stmt = con.createStatement();
		int result = stmt.executeUpdate(query);

		System.out.println(result + " rows affected.");
	}
	
}