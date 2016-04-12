package mobile.main;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

/**
 * Loads hte static non-modifiable content from the db
 * ( car brands, model names, cities and types of users  
 * @author stanislav5
 *
 */
public class StaticStorage {

	public static Map<String, Integer> marks;
	public static Map<String, Integer> models;
	public static Map<String, Integer> cities;
	public static Map<String, Integer> userTypeIds;

	static {

		marks = new HashMap<String, Integer>();
		models = new HashMap<String, Integer>();
		cities = new HashMap<String, Integer>();
		userTypeIds = new HashMap<String, Integer>();
	}

	public StaticStorage() {

	}

	public static void initializeStorage() {
		readCities();
		readMarks();
		readModels();
		readUserTypes();
	}

	public static void readMarks() {
		Connection con = DBConnector.getInstance().getConnection();

		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM marka");

			while (rs.next()) {
				String marka = rs.getString("name");
				Integer markaId = rs.getInt("marka_id");

				marks.put(marka, markaId);

				System.out.println("[MobileCollection] Update marks from db.");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void readModels() {
		Connection con = DBConnector.getInstance().getConnection();

		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM model");

			while (rs.next()) {
				String model = rs.getString("name");
				Integer modelId = rs.getInt("model_id");

				models.put(model, modelId);

				System.out.println("[MobileCollection] Update models from db.");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void readCities() {
		Connection con = DBConnector.getInstance().getConnection();

		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM city");

			while (rs.next()) {
				String city = rs.getString("name");
				Integer cityId = rs.getInt("city_id");
				System.out.println(city + " " + cityId);
				cities.put(city, cityId);

				System.out.println("[MobileCollection] Update cities from db.");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void readUserTypes() {
		Connection con = DBConnector.getInstance().getConnection();

		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM user_type");

			while (rs.next()) {
				String userType = rs.getString("user_type");
				Integer userTypeId = rs.getInt("user_type_id");

				userTypeIds.put(userType, userTypeId);

				System.out.println("[MobileCollection] Update user types from db.");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Get string from model_id or marka_id
	public static String convert(int id) {
		String result = null;

		for (String s : marks.keySet()) {
			int value = marks.get(s);

			if (value == id) {
				result = s;
				return result;
			}
		}
		return result;
	}
	
	public static String convertModel(int id) {
		String result = null;

		for (String s : models.keySet()) {
			int value = models.get(s);

			if (value == id) {
				result = s;
				return result;
			}
		}
		return result;
	}

	public static String convertUserTypeId(int id) {
		String result = null;

		for (String s : userTypeIds.keySet()) {
			int value = userTypeIds.get(s);

			if (value == id) {
				result = s;
				return result;
			}
		}
		return result;
	}
}
