package mobile.ad;
import java.time.LocalDate;
import java.util.LinkedHashSet;
import java.util.Set;
import mobile.car.Car;
import mobile.exceptions.InvalidParameterException;
import mobile.users.Person;

public class Offer {

	private static final int SHORT_VALIDITY = 35;
	private static final int LONG_VALIDITY = 49;

	private int id;
	private Car car;
	private int price;
	private int adValidity;
	private LocalDate startDate;
	private String textDescription;

	private Set<Person> followers;

	public Offer(int adValidity, Car car, String textDescription, int price) 
			throws InvalidParameterException {
		super();
		this.followers = new LinkedHashSet<Person>();
		this.startDate = LocalDate.now();
		this.adValidity = adValidity;
		this.textDescription = textDescription;
		this.car = car;

		setPrice(price);
	}

	
	public void addFollower(Person follower) throws InvalidParameterException {
		if (follower != null) {
			this.followers.add(follower);
		} else {
			throw new InvalidParameterException();
		}
	}

	public void removeFollower(Person follower) {
		if (this.followers.isEmpty()) {
			return;
		}
		if (follower != null) {
			this.followers.remove(follower);
		}
	}
	
	public void setPrice(int price) throws InvalidParameterException {
		if (price > 0) {
			this.price = price;
		} else {
			throw new InvalidParameterException();
		}
	}
	
	public void setAdValidity(int adValidity) throws InvalidParameterException {
		if(adValidity == SHORT_VALIDITY || adValidity ==  LONG_VALIDITY){
			this.adValidity = adValidity;			
		}
		else  {
			throw new InvalidParameterException();
		}
	}

	public int getPrice() {
		return price;
	}

	public int getAdValidity() {
		return adValidity;
	}

	public int getId() {
		return id;
	}
	
	

}
