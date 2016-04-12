package mobile.car;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class Marka {

	private static Map<String, Integer> makers = new LinkedHashMap<String, Integer>();

	public static void getAllMarkaFromDB(Connection connection) throws SQLException {
		String query = "select * from mydb.marka";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet result = statement.executeQuery();
		while (result.next()) {
			String key = result.getString("name");
			Integer value = result.getInt("marka_id");
			makers.put(key, value);
		}

	}

	public static void getMapValues() {
		for (Entry<String, Integer> entry : makers.entrySet()) {
			System.out.println(entry.getKey() + "  " + entry.getValue());
		}
	}
}