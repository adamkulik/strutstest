package comarch.zadanie1.actions;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import comarch.zadanie1.forms.TicketForm;
import comarch.zadanie1.tickets.PlaneTicket;
import comarch.zadanie1.tickets.TrainTicket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TicketAction extends Action {
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)
	        throws Exception {
		TicketForm ticket = (TicketForm) form;
		if(ticket.getTicketType())
		{
			request.getSession().setAttribute("ticketClass",((TrainTicket) ticket.getTicket()).getTicketClass());
			request.getSession().setAttribute("noTransfer",((TrainTicket) ticket.getTicket()).isNoTransfer());
			request.getSession().setAttribute("bikeTransport",((TrainTicket) ticket.getTicket()).isBikeTransport());
		}
		else
		{
			request.getSession().setAttribute("extraLuggage",((PlaneTicket) ticket.getTicket()).isExtraLuggage());
			request.getSession().setAttribute("meal",((PlaneTicket) ticket.getTicket()).isMeal());
			request.getSession().setAttribute("windowSeat",((PlaneTicket) ticket.getTicket()).isWindowSeat());
		}
		return mapping.findForward("success");
		
	}

}
