package mobile.car;

import mobile.exceptions.InvalidParameterException;
import mobile.users.User;

public class Car {
	
	private int power;
	private int km;
	private int year;
	private String location;

	private User owner = null;

	private int engineId;
	private int gearBoxId;
	private int makerId;
	private int modelId;
	private int categoryId;
	private int colorId;
	private int chassisId;
	private int userId;
	
	

	public Car(int power, int km, int year, int engineId, int gearBoxId, int makerId, int modelId, int categoryId,
			int colorId, int chassisId, int userId) {
		super();
		this.power = power;
		this.km = km;
		this.year = year;
		this.engineId = engineId;
		this.gearBoxId = gearBoxId;
		this.makerId = makerId;
		this.modelId = modelId;
		this.categoryId = categoryId;
		this.colorId = colorId;
		this.chassisId = chassisId;
		this.userId = userId;
	}



	public Car(String marka, String model, String year2, String city, String price, int userId) {
		try {
			setKm(km);
			setEngine(engineId);
			setLocation(location);

			this.userId = userId;
			
		} catch (InvalidParameterException e) {
			System.out.println(e.getMessage());
		}
	}



	// Getters and Setters
	private void setOwner(User owner) throws InvalidParameterException {
		if (owner != null) {
			this.owner = owner;
		} else {
			throw new InvalidParameterException("[Car] Invalid owner reference.");
		}

	}

	public void setMaker(int makerId) throws InvalidParameterException {
		if (makerId > 0) {
			this.makerId = makerId;
		} else {
			throw new InvalidParameterException();
		}
	}

	public void setModel(int modelId) throws InvalidParameterException {
		if (modelId > 0) {
			this.modelId = modelId;
		} else {
			throw new InvalidParameterException();
		}
	}

	public int getKm() throws InvalidParameterException {
		return km;

	}

	private void setKm(int km) throws InvalidParameterException {
		if (km >= 0) {
			this.km = km;
		} else {
			throw new InvalidParameterException("Not valid 'km'.");
		}
	}

	public int getEngineId() {
		return engineId;
	}

	public void setEngine(int engineId) throws InvalidParameterException {
		if (engineId > 0) {
			this.engineId = engineId;
		} else {
			throw new InvalidParameterException();
		}
	}

	public void setGearBox(int gearBoxId) throws InvalidParameterException {
		if (gearBoxId > 0) {
			this.gearBoxId = gearBoxId;
		} else {
			throw new InvalidParameterException();
		}
	}

	public void setLocation(String location) throws InvalidParameterException {
		if (location != null) {
			this.location = location;
		} else {
			throw new InvalidParameterException("Invalid location.");
		}
	}

	public int getCategoryId() {
		return categoryId;
	}

	public User getOwner() {
		return owner;
	}

	public int getPower() {
		return power;
	}

	public int getYear() {
		return year;
	}

	public int getGearboxId() {
		return gearBoxId;
	}

	public int getMakerId() {
		return makerId;
	}

	public int getModelId() {
		return modelId;
	}

	public int getColorId() {
		return colorId;
	}

	public int getChassisId() {
		return chassisId;
	}

	public int getUserId() {
		return this.userId;
	}
}