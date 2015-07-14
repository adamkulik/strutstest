package comarch.zadanie1.authenticate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="USERS")
public class User {
	@Column(name="USERNAME", unique=true)
	private String username;
	@Column(name="PASSWORD")
	private String password;
	@Id
	@GeneratedValue
	private int userId;
	@Column(name="VISIBLENAME")
	private String visibleName;
	
	public User()
	{
		username = null;
		password = null;
		userId = 0;
		visibleName = null;
	}
	public User(String newUsername, String newPassword, String newVisibleName)
	{

		username = newUsername;
		password = newPassword;
		visibleName = newVisibleName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public boolean passwordMatch(String passToMatch) {
		return password.equals(passToMatch);
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getVisibleName() {
		return visibleName;
	}
	public void setVisibleName(String visibleName) {
		this.visibleName = visibleName;
	}

	
	

}
