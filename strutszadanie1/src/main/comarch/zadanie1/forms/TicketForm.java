package comarch.zadanie1.forms;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMessage;


public class TicketForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	private String ticketType;
	private boolean extraLuggage;
	private boolean windowSeat;
	private boolean meal;
	private String ticketClass;
	private boolean noTransfer;
	private boolean bike;
	public boolean isExtraLuggage() {
		return extraLuggage;
	}
	public void setExtraLuggage(boolean extraLuggage) {
		this.extraLuggage = extraLuggage;
	}
	public boolean isWindowSeat() {
		return windowSeat;
	}
	public void setWindowSeat(boolean windowSeat) {
		this.windowSeat = windowSeat;
	}
	public boolean isMeal() {
		return meal;
	}
	public void setMeal(boolean meal) {
		this.meal = meal;
	}
	public String getTicketClass() {
		return ticketClass;
	}
	public void setTicketClass(String ticketClass) {
		this.ticketClass = ticketClass;
	}
	public boolean isNoTransfer() {
		return noTransfer;
	}
	public void setNoTransfer(boolean noTransfer) {
		this.noTransfer = noTransfer;
	}
	public boolean isBike() {
		return bike;
	}
	public void setBike(boolean bike) {
		this.bike = bike;
	}
	public String getTicketType() {
		return ticketType;
	}
	public void setTicketType(String ticketType) {
		this.ticketType = ticketType;
	}
	
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {

		ActionErrors errors = new ActionErrors();
		return errors;

	}

}