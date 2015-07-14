package comarch.zadanie1.forms;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.validator.ValidatorForm;


public class RegisterForm extends ValidatorForm {
	
	private static final long serialVersionUID = 1L;
	private String newusername;
	private String newpassword;
	private String passwordcheck;
	private String visiblename;

	public String getPasswordcheck() {
		return passwordcheck;
	}

	public void setPasswordcheck(String passwordcheck) {
		this.passwordcheck = passwordcheck;
	}

	public String getVisiblename() {
		return visiblename;
	}

	public void setVisiblename(String visiblename) {
		this.visiblename = visiblename;
	}

	public String getNewusername() {
		return newusername;
	}

	public void setNewusername(String newusername) {
		this.newusername = newusername;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

//	public ActionErrors validate(ActionMapping mapping,
//			HttpServletRequest request) {
//		ActionErrors errors = new ActionErrors();	
//		return errors;
//
//	}

	
	

}
