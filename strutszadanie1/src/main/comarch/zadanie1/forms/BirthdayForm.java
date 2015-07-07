package comarch.zadanie1.forms;

import java.util.Calendar;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class BirthdayForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private String day;
	private String month;
	private String year;
	private String state;

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {

		ActionErrors errors = new ActionErrors();
		validateBirthday(1, 31, day, errors, "day");
		validateBirthday(1, 12, month, errors, "month");
		validateBirthday(1900, Calendar.getInstance().get(Calendar.YEAR), year,
				errors, "year");
		validateVoivodeship(state, errors);
		return errors;

	}

	public void validateVoivodeship(String field, ActionErrors errors) {
		System.out.print(state);
		if (field == null || field.isEmpty()) {
			errors.add(field,
					new ActionMessage("error.voivodeship.empty"));
		}

	}

	public boolean validateBirthday(int minRange, int maxRange, String value,
			ActionErrors errors, String fieldName) {

		if (value.matches("[a-zA-Z]*")) {
			errors.add(value, new ActionMessage("error." + fieldName));

			return false;
		}
		int target = Integer.parseInt(value);

		if (target < minRange || target > maxRange) {

			errors.add(Integer.toString(target), new ActionMessage("error."
					+ fieldName));
			return false;
		}
		return true;
	}
}
