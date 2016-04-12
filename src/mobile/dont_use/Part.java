package mobile.dont_use;

import mobile.exceptions.InvalidParameterException;

public abstract class Part {
	static final String[] categoryChoise = { "Car", "motorcycle" };
	private String category;

	Part(String category) {
		try {
			setCategory(category);
		} catch (InvalidParameterException e) {
			System.out.println(e.getMessage());
		}
	}

	public String getCategory() {
		return category;
	}

	private void setCategory(String category) throws InvalidParameterException {
		if (category != null) {
			for (int i = 0; i < categoryChoise.length; i++) {
				if (category.equals(categoryChoise[i])) {
					this.category = category;
					break;
				}
			}
		} else {
			throw new InvalidParameterException("Not valid Category for Part");
		}

	}
}