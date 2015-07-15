package comarch.zadanie1.tickets;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="TRAINTICKET")
@PrimaryKeyJoinColumn(name="TICKETID")
public class TrainTicket extends Ticket implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column(name="TICKETCLASS")
	private String ticketClass;
	@Column(name="NOTRANSFER")
	private boolean noTransfer;
	@Column(name="BIKETRANSPORT")
	private boolean bikeTransport;
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