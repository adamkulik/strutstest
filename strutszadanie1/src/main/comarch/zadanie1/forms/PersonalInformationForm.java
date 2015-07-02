package comarch.zadanie1.forms;

import org.apache.struts.action.ActionForm;



public class PersonalInformationForm extends ActionForm {


	private static final long serialVersionUID = 1L;

	private String name;
	private String middleName;
	private String lastName;
	
	
	public String getMiddleName() {
		return middleName;
	}
	
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}


}
