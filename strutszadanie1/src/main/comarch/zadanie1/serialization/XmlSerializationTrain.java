package comarch.zadanie1.serialization;

import com.thoughtworks.xstream.annotations.XStreamAlias;

public class XmlSerializationTrain {
	
	private String name;
	private String middleName;
	private String lastName;
	private String sex;
	private String day;
	private String month;
	private String year;
	private String ticketType;	
	private String ticketClass;
	private boolean noTransfer;
	@XStreamAlias("BikeTransport") 
	private boolean bike;
	@XStreamAlias("Voivodeship") 
	private String state;
	
	public XmlSerializationTrain(String name, String middleName, String lastName,
			String sex, String day, String month, String year,
			String ticketType, 	String ticketClass,
			boolean noTransfer,
			boolean bike, String state) {
	
		this.name = name;
		this.middleName = middleName;
		this.lastName = lastName;
		this.sex = sex;
		this.day = day;
		this.month = month;
		this.year = year;
		this.ticketType = ticketType;
		this.ticketClass = ticketClass;
		this.noTransfer = noTransfer;
		this.bike = bike;
		this.state = state;
	
	}

	
}
