package tickets;

public class TrainTicket extends Ticket {
	
	private String ticketClass;
	private boolean noTransfer;
	private boolean bikeTransport;
	
	public TrainTicket(String setTicketClass, boolean setNoTransfer, boolean setBikeTransport)
	{
		ticketClass = setTicketClass;
		noTransfer = setNoTransfer;
		bikeTransport = setBikeTransport;
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
	public boolean isBikeTransport() {
		return bikeTransport;
	}
	public void setBikeTransport(boolean bikeTransport) {
		this.bikeTransport = bikeTransport;
	}
	

}
