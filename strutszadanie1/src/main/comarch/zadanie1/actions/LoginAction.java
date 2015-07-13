package comarch.zadanie1.actions;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import comarch.zadanie1.forms.LoginForm;
import comarch.zadanie1.authenticate.*;

import javax.security.sasl.AuthenticationException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginAction extends Action {

	
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)
	        throws Exception {
			LoginForm login = (LoginForm) form;
			Authentication securityTest = new Authentication();
			String usern = login.getUsername();
			String passw = login.getPassword();
			User newUser = null;
			
			try	{
				newUser =securityTest.authenticate(usern, passw);
			}
			catch(AuthenticationException e)
			{
				request.getSession().setAttribute("loginerror", e.getMessage());
				return mapping.findForward("failure");
			}
			request.getSession().setAttribute("userdisplay",newUser.getVisibleName());
			return mapping.findForward("success");	
		}


}


