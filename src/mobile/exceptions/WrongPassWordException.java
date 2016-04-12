package mobile.exceptions;

public class WrongPassWordException extends Exception {

	private static final long serialVersionUID = 7195320600025881298L;
	
	public  WrongPassWordException() {
		super();	
	} 
		
	
	public WrongPassWordException(String message, Throwable cause){
		super(message,cause);
		
	}
	public WrongPassWordException(String text){
		super(text);
		
	}
	public WrongPassWordException(Throwable cause){
		super(cause);
	}


}