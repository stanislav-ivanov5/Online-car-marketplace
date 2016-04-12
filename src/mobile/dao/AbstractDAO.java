package mobile.dao;

import java.sql.Connection;
import java.sql.SQLException;

import mobile.main.DBConnector;

public class AbstractDAO {

	private Connection con;
	
	public AbstractDAO() {
		con = DBConnector.getInstance().getConnection();
	}
	
	public Connection getCon() {
		return con;
	}
	
	public static void closeCon(Connection con) {
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
