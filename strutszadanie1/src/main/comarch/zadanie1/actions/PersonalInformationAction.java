package comarch.zadanie1.actions;


import java.util.ArrayList;
import java.util.List;


import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import comarch.zadanie1.database.VoivodeshipDAOImpl;
import comarch.zadanie1.forms.PersonalInformationForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class PersonalInformationAction extends Action{

	
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)
	        throws Exception {
	 
		PersonalInformationForm personalInformation = (PersonalInformationForm) form;
			request.getSession().setAttribute("name", personalInformation.getName());
			request.getSession().setAttribute("middleName", personalInformation.getMiddleName());
			request.getSession().setAttribute("lastName", personalInformation.getLastName());
			request.getSession().setAttribute("sex",personalInformation.getSex());
			request.getSession().setAttribute("security",6);
		
			
			List<String> vList = new ArrayList<String>(new VoivodeshipDAOImpl().getVoivodeships());
		
			request.getSession().setAttribute("list", vList);
			return mapping.findForward("success");
		}


}
