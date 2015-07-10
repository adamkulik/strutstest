package comarch.zadanie1.authenticate;

public class User {
	
	private String username;
	private String password;
	private int userId;
	
	public User(String newUsername, String newPassword, int newUserId)
	{
		username = newUsername;
		password = newPassword;
		userId = newUserId;
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
	

}
