package mobile.exceptions;

public class NotValidUserNameException extends Exception {
	
	private static final long serialVersionUID = 7639924780780866611L;
	
	public NotValidUserNameException() {
		super();
	}
	public NotValidUserNameException(String message, Throwable cause){
		super(message,cause);
		
	}
	public NotValidUserNameException(String text){
		super(text);
		
	}
	public NotValidUserNameException(Throwable cause){
		super(cause);
	}
}