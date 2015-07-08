package comarch.zadanie1.serialization;


import java.io.Serializable;
import java.util.Calendar;

import com.thoughtworks.xstream.annotations.XStreamAlias;


public class XmlSerializationPlane implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String name;
	private String middleName;
	private String lastName;
	private String sex;
	private String day;
	private String month;
	private String year;
	private String ticketType;
	private boolean extraLuggage;
	private boolean windowSeat;
	private boolean meal;
	@XStreamAlias("Voivodeship") 
	private String state;
	private int registrationYear;
	private int registrationMonth;
	private int registrationDay;
	private String registrationTime;
	
	public XmlSerializationPlane(String name, String middleName, String lastName,
			String sex, String day, String month, String year,
			String ticketType, boolean extraLuggage, boolean windowSeat,
			boolean meal, String state) {
		
		this.name = name;
		this.middleName = middleName;
		this.lastName = lastName;
		this.sex = sex;
		this.day = day;
		this.month = month;
		this.year = year;
		this.ticketType = ticketType;
		this.extraLuggage = extraLuggage;
		this.windowSeat = windowSeat;
		this.meal = meal;		
		this.state = state;
		Calendar date = Calendar.getInstance();
		registrationYear = date.get(Calendar.YEAR);
		registrationMonth = date.get(Calendar.MONTH);
		registrationDay = date.get(Calendar.DAY_OF_MONTH);
		registrationTime = date.get(Calendar.HOUR_OF_DAY) +":" + date.get(Calendar.MINUTE) + ":" + date.get(Calendar.SECOND); 
	}

	


	


}
