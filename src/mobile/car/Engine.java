package mobile.car;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;


public class Engine {
	
	private int id;

	private static Map<String,Integer> engines = new LinkedHashMap<String,Integer>();
	
	public static void getAllEnginesFromDB(Connection connection) throws SQLException{
		String query= "select * from mydb.engine";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet result= statement.executeQuery();
		while(result.next()){
			String key= result.getString("type_engine");
			Integer value= result.getInt("engine_id");
			engines.put(key, value);
		}
		
	}
	public static void getMapValues(){
		for (Entry<String, Integer> entry : engines.entrySet()) {
			System.out.println(entry.getKey()+"  "+entry.getValue());
		}
	}

	
}