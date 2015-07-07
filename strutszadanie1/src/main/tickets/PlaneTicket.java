package tickets;

public class PlaneTicket extends Ticket {
	
	private boolean extraLuggage;
	private boolean meal;
	private boolean windowSeat;
	
	public PlaneTicket(boolean setExtraLuggage, boolean setMeal, boolean setWindowSeat)
	{
		extraLuggage = setExtraLuggage;
		meal = setMeal;
		windowSeat = setWindowSeat;
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
