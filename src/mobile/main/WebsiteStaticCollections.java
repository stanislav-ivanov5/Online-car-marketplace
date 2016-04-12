package mobile.main;
import java.awt.Color;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.BlockingQueue;

import mobile.ad.Offer;
import mobile.car.Engine;
import mobile.car.Gearbox;
import mobile.users.Admin;
import mobile.users.Person;
import mobile.users.User;

public class WebsiteStaticCollections {


	private static Map<Integer, Engine> engines;
	private static Map<Integer, Gearbox> gearboxes;
	private static Map<Integer, Color> colors;
	
	Map<Integer, Integer> ads;
	
	
	public WebsiteStaticCollections() {
		
		ads = new HashMap<Integer, Integer>();
	}

	
	public  void getAllAdsFromDB(Connection connection) throws SQLException{
		String query= "select * from mydb.ad";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet result= statement.executeQuery();
		while(result.next()){
			Integer key= result.getInt("user_id");
			Integer value= result.getInt("ad_id");
			
			ads.put(key, value);
		}
		
	}
	public void getMapValues(){
		for (Entry<Integer, Integer> entry : ads.entrySet()) {
			System.out.println(entry.getKey()+"  "+entry.getValue());
		}
	}

	
	void searchAd() {

	}

	public void add(Object o, List<Object> list) {
		
	}

	public void remove(Object o, List<Object> list) {
		if(o != null && list != null && list.size() > 0){
			
			if(o instanceof Offer){
				this.ads.remove((Offer) o);
			}
		}
	}
}