package mobile.users;

import mobile.exceptions.InvalidParameterException;

public class User extends Person {

	private static final int USER_ID = 4;
	private static final int DEALER_ID = 1;
	private int userId;
	private String userType="user";
	
	public User(String username, String email, String phone, String userType, String password) 
			throws InvalidParameterException {
		
		super(username, email, phone, password);

		this.userType=userType;
		
		System.out.println("[User] Create user.");
	}
	

	public int getDBId() {
		return userId;
	}

	public void setId(int lastId) {
		userId = lastId;
	}

	public String getPassword() {
		return password;
	}

	public int getUserTypeId() {
		if(userType.equals("dealer")) {
			
			return DEALER_ID;
		}
		else {
			return USER_ID;
		}
	}
	
	
	
}