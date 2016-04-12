package mobile.car;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class Gearbox {

	private static Map<String,Integer> gearboxes= new LinkedHashMap<String,Integer>();
	

	public static void getAllGearboxesFromDB(Connection connection) throws SQLException{
		String query= "select * from mydb.gearbox";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet result= statement.executeQuery();
		while(result.next()){
			String key= result.getString("name");
			Integer value= result.getInt("gearbox_id");
			gearboxes.put(key, value);
		}
		
	}
	public static void getMapValues(){
		for (Entry<String, Integer> entry : gearboxes.entrySet()) {
			System.out.println(entry.getKey()+"  "+entry.getValue());
		}
	}
	
}