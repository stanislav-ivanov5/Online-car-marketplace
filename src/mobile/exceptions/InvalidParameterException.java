package mobile.exceptions;

public class InvalidParameterException extends Exception {

	private static final long serialVersionUID = -1300395845395108245L;

	public InvalidParameterException() {
		super();
	}

	public InvalidParameterException(String message, Throwable cause) {
		super(message, cause);

	}

	public InvalidParameterException(String text) {
		super(text);

	}

	public InvalidParameterException(Throwable cause) {
		super(cause);
	}

}