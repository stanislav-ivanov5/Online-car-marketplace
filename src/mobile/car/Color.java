package mobile.car;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class Color {
	
	private static Map<String,Integer> colors = new LinkedHashMap<String,Integer>();
	
	public static void getAllCitiesFromDB(Connection connection) throws SQLException{
		String query= "select * from mydb.color";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet result= statement.executeQuery();
		while(result.next()){
			String key= result.getString("name");
			Integer value= result.getInt("color_id");
			colors.put(key, value);
		}
		
	}
	public static void getMapValues(){
		for (Entry<String, Integer> entry : colors.entrySet()) {
			System.out.println(entry.getKey()+"  "+entry.getValue());
		}
	}
}