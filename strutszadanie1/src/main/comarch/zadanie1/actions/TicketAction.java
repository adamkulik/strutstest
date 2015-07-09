package comarch.zadanie1.actions;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import comarch.zadanie1.forms.TicketForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TicketAction extends Action {
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)
	        throws Exception {
		TicketForm ticket = (TicketForm) form;
		request.getSession().setAttribute("ticketType",ticket.getTicketType());
		if(ticket.getTicketType().equals("train"))
		{
			
			request.getSession().setAttribute("ticketClass",ticket.getTicketClass());
			request.getSession().setAttribute("noTransfer",ticket.isNoTransfer());
			request.getSession().setAttribute("bikeTransport",ticket.isBike());
		}
		else
		{
			request.getSession().setAttribute("extraLuggage",ticket.isExtraLuggage());
			request.getSession().setAttribute("meal",ticket.isMeal());
			request.getSession().setAttribute("windowSeat",ticket.isWindowSeat());
		}
		request.getSession().setAttribute("security",(int)request.getSession().getAttribute("security")-2);
		return mapping.findForward("success");
		
	}

}
