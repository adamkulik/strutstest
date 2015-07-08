package comarch.zadanie1;

import java.io.Serializable;

import com.thoughtworks.xstream.annotations.XStreamAlias;


@XStreamAlias("Dane") 
public class Serialization implements Serializable{

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
	@XStreamAlias("Voivodeship") 
	private String state;

	public Serialization(String name, String middleName, String lastName,
			String sex, String day, String month, String year, String state) {

		this.name = name;
		this.middleName = middleName;
		this.lastName = lastName;
		this.sex = sex;
		this.day = day;
		this.month = month;
		this.year = year;
		this.state = state;	
	}
	
	


}
