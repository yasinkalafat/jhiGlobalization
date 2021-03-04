package globalization;

public class Translation {

	private String module;
	private String identifier;
	private String turkish;
	private String english;

	public Translation(String module, String identifier, String turkish, String english) {
		super();
		this.module = module;
		this.identifier = identifier;
		this.turkish = turkish;
		this.english = english;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getIdentifier() {
		return identifier;
	}

	public void setIdentifier(String identifier) {
		this.identifier = identifier;
	}

	public String getTurkish() {
		return turkish;
	}

	public void setTurkish(String turkish) {
		this.turkish = turkish;
	}

	public String getEnglish() {
		return english;
	}

	public void setEnglish(String english) {
		this.english = english;
	}

	@Override
	public String toString() {
		return "Translation [module=" + module + ", identifier=" + identifier + ", turkish=" + turkish + ", english="
				+ english + "]";
	}

}
