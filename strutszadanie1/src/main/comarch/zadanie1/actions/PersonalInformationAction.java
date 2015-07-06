package comarch.zadanie1.actions;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import comarch.zadanie1.forms.PersonalInformationForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class PersonalInformationAction extends Action{

	
	private static final long serialVersionUID = 1L;
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)
	        throws Exception {
	 
		PersonalInformationForm personalInformation = (PersonalInformationForm) form;
		
			request.setAttribute("name", personalInformation.getName());
			request.setAttribute("middleName", personalInformation.getMiddleName());
			request.setAttribute("lastName", personalInformation.getLastName());
			request.setAttribute("sex",personalInformation.getSex());
			return mapping.findForward("success");
		}


}
