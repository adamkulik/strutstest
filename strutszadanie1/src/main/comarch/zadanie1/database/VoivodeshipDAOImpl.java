package comarch.zadanie1.database;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import org.hibernate.Transaction;

public class VoivodeshipDAOImpl implements VoivodeshipDAO {

	private List<String> list;

	public VoivodeshipDAOImpl() {

		list = new ArrayList<String>();
	}

	@Override
	public List<String> getVoivodeships() {

		Session session = HibernateUtil.configureSessionFactory().openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List<?> voivodeships = session.createQuery(
					"SELECT voivodeship FROM Voivodeship").list();
			for (Iterator<?> iterator = voivodeships.iterator(); iterator
					.hasNext();) {

				String voivodeship = (String) iterator.next();
				list.add(voivodeship);
				System.out.println("wojew.: " + voivodeship);

			}
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}

		return list;
	}

}
