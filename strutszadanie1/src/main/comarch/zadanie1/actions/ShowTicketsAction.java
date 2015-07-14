package comarch.zadanie1.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import comarch.zadanie1.database.HibernateUtil;
import comarch.zadanie1.tickets.PlaneTicket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowTicketsAction extends Action {
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response)
	        throws Exception {
		
		List<PlaneTicket> list = new ArrayList<>();
		Session session = HibernateUtil.configureSessionFactory().openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List<?> planeTickets = session.createQuery(
					"FROM PlaneTicket WHERE USERID="+request.getSession().getAttribute("userid")).list();
			for (Iterator<?> iterator = planeTickets.iterator(); iterator
					.hasNext();) {

				PlaneTicket plane = (PlaneTicket) iterator.next();
				list.add(plane);

			}
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		request.getSession().setAttribute("planeticketslist", list);
		return mapping.findForward("success");
		
	}

}