package mobile.exceptions;

public class NotValidEmailException extends Exception {

	private static final long serialVersionUID = -6404277700680365408L;
	
	public  NotValidEmailException() {
		super();	
	} 
		
	
	public NotValidEmailException(String message, Throwable cause){
		super(message,cause);
		
	}
	public NotValidEmailException(String text){
		super(text);
		
	}
	public NotValidEmailException(Throwable cause){
		super(cause);
	}
}