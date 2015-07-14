package comarch.zadanie1.tickets;

import javax.persistence.*;

@Entity
@Table(name="PLANETICKET")
@PrimaryKeyJoinColumn(name="TICKETID")
public class PlaneTicket extends Ticket {
	
	@Column(name="EXTRALUGGAGE")
	private boolean extraLuggage;
	@Column(name="MEAL")
	private boolean meal;
	@Column(name="WINDOWSEAT")
	private boolean windowSeat;
	public PlaneTicket(boolean extraLuggage, boolean meal, boolean windowSeat) {
		this.extraLuggage = extraLuggage;
		this.meal = meal;
		this.windowSeat = windowSeat;
	}
	public PlaneTicket() {

	}
	public boolean isExtraLuggage() {
		return extraLuggage;
	}
	public void setExtraLuggage(boolean extraLuggage) {
		this.extraLuggage = extraLuggage;
	}
	public boolean isMeal() {
		return meal;
	}
	public void setMeal(boolean meal) {
		this.meal = meal;
	}
	public boolean isWindowSeat() {
		return windowSeat;
	}
	public void setWindowSeat(boolean windowSeat) {
		this.windowSeat = windowSeat;
	}
	
	

}
