package mobile.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnector {
	
	private static final String PASS = "admin";

	private static final String USERNAME = "root";

	private static final String DB_NAME = "mobile";

	private static final String URL = "localhost:3306/";
	
	/* 
	 * Singleton DB Connection for all DB objects
	 * 
	 */

	private static DBConnector connectionInstance = null;
	private static Connection connection = null;
	
	
	private DBConnector() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			DBConnector.connection = DriverManager.getConnection(
					"jdbc:mysql://" + URL + DB_NAME, USERNAME, PASS);
			
			System.out.println("[DBConnector] Initializing static collections.");
			
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		return connection;
	}
	
	// Get instance method
	public static DBConnector getInstance() {
		synchronized (DBConnector.class) {
			if(connectionInstance == null) {
				connectionInstance = new DBConnector();
			}
		}
		return connectionInstance;
	}
	
	private void initializeStorage() {
		StaticStorage.readCities();
		StaticStorage.readMarks();
		StaticStorage.readModels();
		StaticStorage.readUserTypes();
	}

}