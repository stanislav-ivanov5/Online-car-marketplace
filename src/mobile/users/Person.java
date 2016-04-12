package mobile.users;

import mobile.exceptions.*;

public abstract class Person {
	private static final String BG_DOMAIN_SUFFIX = ".bg";
	private static final String COM_DOMAIN_SUFFIX = ".com";
	private static final String MAIL_AT_SIGN = "@";
	private static final int PHONE_NUM_LENGTH = 10;

	private String username;
	protected String password;
	private String email;
	protected String phone;

	public Person(String username, String email, String phone, String password) throws InvalidParameterException {

		if (username == null || password == null || email == null) {
			throw new InvalidParameterException("[Person]: Invalid credentials.");

		} else {
			setUsername(username);
			setEmail(email);
			setPhoneNum(phone);
			setPassword(password);
		}
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) throws InvalidParameterException {
		if (username != null && username.length() > 0) {
			this.username = username;
		} else
			throw new InvalidParameterException("[Person] Invalid username.");

	}

	public void setPassword(String password) throws InvalidParameterException {
		if(password!=null){
			this.password=password;
		}
//		int size = 0;
//		int aDigit = 0;
//		int upperCaseLetters = 0;
//		int lowerCaseLetters = 0;
//
//		for (int i = 0; i < password.length(); i++) {
//			size++;
//			if (Character.isDigit(password.charAt(i))) {
//				aDigit++;
//			}
//			if (Character.isUpperCase(password.charAt(i))) {
//				upperCaseLetters++;
//			}
//			if (Character.isLowerCase(password.charAt(i))) {
//				lowerCaseLetters++;
//			}
//		}
//		if (size >= 8 && aDigit >= 1 && lowerCaseLetters >= 2 && upperCaseLetters >= 1) {
//			this.password = password;
//		} else {
//			throw new InvalidParameterException("[Person] Invalid password.");
//		}
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) throws InvalidParameterException {
		
//		String localPart = email.substring(0, email.indexOf(MAIL_AT_SIGN));
//		String domainPart = email.substring(email.indexOf(MAIL_AT_SIGN), email.length());
//		if (!localPart.equals("") && email.contains(MAIL_AT_SIGN)
//				&& (domainPart.contains(COM_DOMAIN_SUFFIX) || domainPart.contains(BG_DOMAIN_SUFFIX))) {
//			
//		} else {
//			throw new InvalidParameterException("[Person] Invalid email address.");
//		}
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhoneNum(String phone) throws InvalidParameterException {
		System.out.println("-----------" + phone);
		
		if (phone != null && phone.length() == PHONE_NUM_LENGTH) {
//			if (phone.contains("^[a-zA-Z]")) {
				this.phone = phone;
				
				System.out.println("[Person] Phone number added.");
//			}
		} 
	}

}