package comarch.zadanie1.actions;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import comarch.zadanie1.forms.PersonalInformationForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class PersonalInformationAction extends ActionForward{

	
	private static final long serialVersionUID = 1L;
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)
	        throws Exception {
	 
		PersonalInformationForm personalInformation = (PersonalInformationForm) form;
		
		System.out.print( personalInformation.getName());
		System.out.print( personalInformation.getLastName());
	
			return mapping.findForward("success");
		}

}
