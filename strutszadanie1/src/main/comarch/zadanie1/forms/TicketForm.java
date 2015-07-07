package comarch.zadanie1.forms;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMessage;

import comarch.zadanie1.tickets.Ticket;

public class TicketForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	private boolean ticketType;
	private Ticket ticket;
	public boolean getTicketType() {
		return ticketType;
	}
	public void setTicketType(boolean ticketType) {
		this.ticketType = ticketType;
	}
	public Ticket getTicket() {
		return ticket;
	}
	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}
	
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {

		ActionErrors errors = new ActionErrors();
		return errors;

	}

}