package mobile.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import mobile.car.Car;
import mobile.exceptions.InvalidParameterException;

public class CarDAO extends AbstractDAO {

	// Add Car ad
	public void addCar(Car car) throws InvalidParameterException {

		// int mps_id, int mps_category_id, int power, int km, date
		// production_date,
		// int gearbox_id, engine_id, marka_id, color_id, chassis_id, model_id,
		// user_id

		if (car == null) {
			throw new InvalidParameterException("[CarDAO] Invalid car reference.");
		} else {

			try {
				for(int i = 1; i < 250; i += 10) {
					
					PreparedStatement ps = getCon()
							.prepareStatement("INSERT INTO mps VALUES(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
					
					ps.setInt(1, 1);
					ps.setInt(2, car.getPower() + i);
					ps.setInt(3, car.getKm() + i);
					ps.setInt(4, car.getYear());
					ps.setInt(5, car.getGearboxId());
					ps.setInt(6, car.getEngineId());
					ps.setInt(7, car.getMakerId());
					ps.setInt(8, car.getColorId());
					ps.setInt(9, car.getChassisId());
					ps.setInt(10, car.getModelId());
					ps.setInt(11, car.getUserId());
					
					ps.executeUpdate();
				}
				
				
				
			} catch (SQLException e) {
				System.out.println("[CarDAO] SQLException");
				e.printStackTrace();
			}
		}
	}
	

	// Get all cars by criteria
	public void getAllCars(List<String> parameters) {

		// String[] getParamValues
	}

	// Get all cars
	public ResultSet getAllCars() {

		try {
			Statement stmt = getCon().createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM mps ORDER BY model_id");
			return rs;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
