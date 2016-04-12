package mobile.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import mobile.car.Car;
import mobile.exceptions.InvalidParameterException;
import mobile.main.DBConnector;
import mobile.main.StaticStorage;
import mobile.users.User;

public class UserDAO extends AbstractDAO {

	public int addUser(User user) throws InvalidParameterException {
		if (user == null) {
			System.out.println("[UserDAO] Invalid user.");
			throw new InvalidParameterException("[UserDAO] Invalid user.");
		} else {
			try {

				System.out.println("[UserDAO] Inserting user into db.");

				PreparedStatement ps = getCon().prepareStatement("INSERT INTO user VALUES(null, ?, ?, ?, ?, ?);",
						PreparedStatement.RETURN_GENERATED_KEYS);
				int userTypeId = user.getUserTypeId();
				
				ps.setString(1, user.getUsername());
				ps.setString(2, user.getEmail());
				ps.setString(3, user.getPhone());
				ps.setInt(4, userTypeId);
				ps.setString(5, user.getPassword());

				ps.executeUpdate();

				System.out.println("[UserDAO] Inserted user into db.");

				ResultSet rs = ps.getGeneratedKeys();

				int lastId = 0;
				if (rs.next()) {
					lastId = rs.getInt(1);
					user.setId(lastId);
					System.out.println("[UserDAO] User id: " + user.getDBId());
				}

				return lastId;

			} catch (SQLException e) {
				System.out.println("[UserDAO] SQL exception.");
				e.printStackTrace();

			} 
			return 0;
		}
	}
	
	public User getUser(int id) throws InvalidParameterException {
		User result = null;
		
		Connection con = DBConnector.getInstance().getConnection();
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM user WHERE user_id=" + id + ";");

			while(rs.next()) {
				String username = rs.getString("username");
				String email = rs.getString("email");
				String phone = rs.getString("phone_num");
				int userTypeId = rs.getInt("user_type_id");
				String password = rs.getString("password");

				String userType = StaticStorage.convertUserTypeId(userTypeId);
				
				result = new User(username, email, phone, userType, password);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return result;
	}

	// Get all car ads for given dealer
	public List<CarInfo> getDealerAdsIds(User dealer) {
		if (dealer != null) {
			List<CarInfo> result = new ArrayList<>();
			int id = dealer.getDBId();

			if (doesExist(id)) {

				ResultSet rs = createStatement(id);
				try {
					while (rs.next()) {

						result.add(new CarInfo(rs.getInt("mps_id"), rs.getInt("mps_category_id"), rs.getInt("power"),
								rs.getInt("km"), rs.getInt("production_date"), rs.getInt("gearbox_id"),
								rs.getInt("engine_id"), rs.getInt("marka_id"), rs.getInt("color_id"),
								rs.getInt("chassis_id"), rs.getInt("model_id"), rs.getInt("user_id")));
					}

					return result;

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	private ResultSet createStatement(int id) {
		try {
			PreparedStatement ps = getCon().prepareStatement("SELECT mps_id FROM mps WHERE user_id=?");
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			return rs;

		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return null;
	}

	// Is user registered
	public boolean doesExist(String email) {
		try {
			Statement statement = getCon().createStatement();
			ResultSet result = statement.executeQuery("SELECT email FROM user WHERE email='" + email + "';");

			System.out.println("[UserDAO] User " + result.next());

			if (result.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	// Check if user exist by user ID
	private boolean doesExist(int id) {
		try {
			Statement stmt = getCon().createStatement();
			ResultSet rs = stmt.executeQuery("SELECT user_id from users WHERE user_id=" + id + " AND is_dealer=1);");

			// Check if the dealer id exists
			if (rs.next()) {
				return true;
			} else {
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	class CarInfo {
		int mps_id;
		int mps_category_id;
		int power;
		int km;
		int production_date;
		int gearbox_id;
		int engine_id;
		int maker_id;
		int color_id;
		int chassis_id;
		int model_id;
		int user_id;

		public CarInfo(int mps_id, int mps_category_id, int power, int km, int production_date, int gearbox_id,
				int engine_id, int maker_id, int color_id, int chassis_id, int model_id, int user_id) {
			super();
			this.mps_id = mps_id;
			this.mps_category_id = mps_category_id;
			this.power = power;
			this.km = km;
			this.production_date = production_date;
			this.gearbox_id = gearbox_id;
			this.engine_id = engine_id;
			this.maker_id = maker_id;
			this.color_id = color_id;
			this.chassis_id = chassis_id;
			this.model_id = model_id;
			this.user_id = user_id;
		}
	}
}
