package comarch.zadanie1.authenticate;



import javax.security.sasl.AuthenticationException;

import comarch.zadanie1.database.HibernateUtil;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Authentication {
	

	
	
	
	
	public Authentication(){


		

	}
	public User authenticate(String username, String password) throws AuthenticationException
	{
		Session session = HibernateUtil.configureSessionFactory().openSession();
		Transaction tx = null;
		User user= null;
		try {
			tx = session.beginTransaction();
			Object users = session.createQuery(
					"FROM User WHERE username=\'"+username+"\'").uniqueResult();
			user = (User)users;
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}		
		if(user == null) throw new AuthenticationException("Invalid user");
		boolean validPassword = user.passwordMatch(password);
		if(!validPassword) throw new AuthenticationException("Wrong password");
		return user;
			
	}

}
