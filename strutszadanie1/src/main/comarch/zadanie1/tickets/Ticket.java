package comarch.zadanie1.tickets;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.*;
@Entity
@Table(name="TICKETS")
@Inheritance(strategy=InheritanceType.JOINED)
public abstract class Ticket {
	
	@Column(name="FIRSTNAME")
	private String firstName;
	@Column(name="MIDDLENAME")
	private String middleName;
	@Column(name="LASTNAME")
	private String lastName;
	@Column(name="BIRTHDAY")
	private int birthDay;
	@Column(name="BIRTHMONTH")
	private int birthMonth;
	@Column(name="BIRTHYEAR")
	private int birthYear;

	@Column(name="VOIVODSHIP")
	private String voivodship;
	@Column(name="USERID")
	private int userId;
	@Id
	@GeneratedValue
	private int ticketId;
	
	public Ticket(String firstName, String middleName, String lastName, int birthDay, int birthMonth, int birthYear,
			String voivodship, int userId, int ticketId) {
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.birthDay = birthDay;
		this.birthMonth = birthMonth;
		this.birthYear = birthYear;
		this.voivodship = voivodship;
		this.userId = userId;
		this.ticketId = ticketId;
	}
	public Ticket() {

	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(int birthDay) {
		this.birthDay = birthDay;
	}
	public int getBirthMonth() {
		return birthMonth;
	}
	public void setBirthMonth(int birthMonth) {
		this.birthMonth = birthMonth;
	}
	public int getBirthYear() {
		return birthYear;
	}
	public void setBirthYear(int birthYear) {
		this.birthYear = birthYear;
	}
	public String getVoivodship() {
		return voivodship;
	}
	public void setVoivodship(String voivodship) {
		this.voivodship = voivodship;
	}
	
	

}
