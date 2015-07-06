package comarch.zadanie1.forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMessage;

public class PersonalInformationForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private String name;
	private String middleName;
	private String lastName;
	private String sex;

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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();

		System.out.print(name);
		System.out.print(lastName);
		System.out.print(middleName);
		System.out.print(sex);

		validateStrings(name, "name", errors);
		validateStrings(lastName, "lastName", errors);
		validateMiddleName(middleName, "middleName", errors);
		validateStrings(sex, "sex", errors);
		return errors;

	}

	




	public void validateMiddleName(String field, String fieldName,
			ActionErrors errors) {

		if (!field.matches("[a-zA-Z]*"))
			errors.add(field, new ActionMessage("error." + fieldName
					+ ".required"));
	}

	public void validateStrings(String field, String fieldName,
			ActionErrors errors) {

		if (field == null || field.length() < 1)
		{
			errors.add(field,
			new ActionMessage("error." + fieldName + ".empty"));
		}
	

		else if (!field.matches("[a-zA-Z]*"))
		{
			errors.add(field, new ActionMessage("error." + fieldName
					+ ".required"));
	
		}
			

	}
}
