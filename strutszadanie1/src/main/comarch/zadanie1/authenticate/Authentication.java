package comarch.zadanie1.authenticate;

import java.util.HashMap;
import java.util.Map;

import javax.security.sasl.AuthenticationException;

public class Authentication {
	
	private Map users;
	
	
	
	
	public Authentication(){
		users = new HashMap();
		users.put("admin1", new User("Administrator","admin",1));
		users.put("admin2", new User("Adam Kulik","akulik123",2));
	}
	public User authenticate(String username, String password) throws AuthenticationException
	{
		User user = (User) users.get(username);
		if(user == null) throw new AuthenticationException("Invalid user");
		boolean validPassword = user.passwordMatch(password);
		if(!validPassword) throw new AuthenticationException("Wrong password");
		return user;
			
	}

}
