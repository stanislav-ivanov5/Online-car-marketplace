package mobile.dont_use;
import mobile.exceptions.InvalidParameterException;

public class CarPart extends Part {
	static final String[] subCategoryChoise = { "Auto gas equipment", "Audio / Video", "Fuel system", "Engine",
			"Bulky Bodywork Parts", "Electric system", "Exhaust system", "Interior", "Supplies", "Steering system",
			"Compact bodywork parts", "Cooling system", "Equipment", "braking System", "Transmission", "Tuning",
			"Turbochargers", "Transmission" };
	private String subCategory;
	//TO DO 
	private String subCategoryPart;

	CarPart(String category) {
		super(category);
		try {
			setSubCategory(category);
		} catch (InvalidParameterException e) {
			System.out.println(e.getMessage());
		}

	}

	public String getSubCategory() {
		return subCategory;
	}

	private void setSubCategory(String subCategory) throws InvalidParameterException {
		if (subCategory != null) {
			for (int i = 0; i < categoryChoise.length; i++) {
				if (subCategory.equals(categoryChoise[i])) {
					this.subCategory = subCategory;
					break;
				}
			}
		} else {
			throw new InvalidParameterException("Not valid Category Choise");
		}

	}

	public String getSubCategoryPart() {
		return subCategoryPart;
	}
	//To Do
	private void setSubCategoryPart(String subCategoryPart) {
		this.subCategoryPart = subCategoryPart;
	}

}