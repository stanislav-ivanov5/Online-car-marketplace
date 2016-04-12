package mobile.car;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class Model {
	// vytreshen map<model_id, makra_id>
	private static Map<String, ModelMarka> models = new LinkedHashMap<String, ModelMarka>();

	private class ModelMarka {
		int model_id;
		int marka_id;
		
		public ModelMarka(int model, int marka){
			this.marka_id = model;
			this.marka_id = marka;
		}
		
	}
	
	public static void getAllCitiesFromDB(Connection connection) throws SQLException {
		String query = "select * from mydb.model";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet result = statement.executeQuery();
		while (result.next()) {
			String markaName = result.getString("name");
			Integer modelID = result.getInt("model_id");
			Integer markaID = result.getInt("marka_id");
			
			Model.ModelMarka value = new Model().new ModelMarka(modelID, markaID);
			
			models.put(markaName, value);
		}

	}

	public static void getMapValues() {
		for (Entry<String, ModelMarka> entry : models.entrySet()) {
			System.out.println(entry.getKey() + "  " + entry.getValue().marka_id + " " + entry.getValue().model_id );
		}
	}

}