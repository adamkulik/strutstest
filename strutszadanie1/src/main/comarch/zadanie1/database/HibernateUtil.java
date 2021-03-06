package comarch.zadanie1.database;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	private static  SessionFactory sessionFactory;

	public static SessionFactory configureSessionFactory(){
		
		Configuration configuration = new Configuration().configure();
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
			applySettings(configuration.getProperties());
			 sessionFactory = configuration.buildSessionFactory(builder.build());
	
			 return sessionFactory;
	}
	
	public static void shutdown(){
		
		sessionFactory.close();
	}
	


	
}
