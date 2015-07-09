package comarch.zadanie1.actions;


import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import comarch.zadanie1.forms.BirthdayForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BirthdayAction extends Action{

	
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)
	        throws Exception {
		BirthdayForm birthday = (BirthdayForm) form;
			request.getSession().setAttribute("state", birthday.getState());
			request.getSession().setAttribute("day", birthday.getDay());
			request.getSession().setAttribute("month", birthday.getMonth());
			request.getSession().setAttribute("year", birthday.getYear());
			request.getSession().setAttribute("security",(int)request.getSession().getAttribute("security")-3);
			return mapping.findForward("success");
		}


}
