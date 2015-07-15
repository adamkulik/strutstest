package comarch.zadanie1.actions;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;

import comarch.zadanie1.database.HibernateUtil;
import comarch.zadanie1.tickets.PlaneTicket;
import comarch.zadanie1.tickets.Ticket;
import comarch.zadanie1.tickets.TrainTicket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddTicketAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		if ((int) request.getSession().getAttribute("pass") == 15) {

			String ticketType = (String) request.getSession().getAttribute(
					"ticketType");
			int birthday;
			int birthmonth;
			int birthyear;
			int userid;
			Ticket a1 = null;

			if (ticketType.equals("plane")) {
				birthday = Integer.parseInt(request.getSession()
						.getAttribute("day").toString());
				birthmonth = Integer.parseInt(request.getSession()
						.getAttribute("month").toString());
				birthyear = Integer.parseInt(request.getSession()
						.getAttribute("year").toString());
				userid = Integer.parseInt(request.getSession()
						.getAttribute("userid").toString());
				a1 = new PlaneTicket();
				a1.setFirstName((String) request.getSession().getAttribute(
						"name"));
				a1.setMiddleName((String) request.getSession().getAttribute(
						"middleName"));
				a1.setLastName((String) request.getSession().getAttribute(
						"lastName"));
				a1.setBirthDay(birthday);
				a1.setBirthMonth(birthmonth);
				a1.setBirthYear(birthyear);
				a1.setVoivodship((String) request.getSession().getAttribute(
						"state"));
				a1.setUserId(userid);
				((PlaneTicket) a1).setExtraLuggage((boolean) request
						.getSession().getAttribute("extraLuggage"));
				((PlaneTicket) a1).setMeal((boolean) request.getSession()
						.getAttribute("meal"));
				((PlaneTicket) a1).setWindowSeat((boolean) request.getSession()
						.getAttribute("windowSeat"));

			} else {
				birthday = Integer.parseInt(request.getSession()
						.getAttribute("day").toString());
				birthmonth = Integer.parseInt(request.getSession()
						.getAttribute("month").toString());
				birthyear = Integer.parseInt(request.getSession()
						.getAttribute("year").toString());
				userid = Integer.parseInt(request.getSession()
						.getAttribute("userid").toString());
				a1 = new TrainTicket();
				a1.setFirstName((String) request.getSession().getAttribute(
						"name"));
				a1.setMiddleName((String) request.getSession().getAttribute(
						"middleName"));
				a1.setLastName((String) request.getSession().getAttribute(
						"lastName"));
				a1.setBirthDay(birthday);
				a1.setBirthMonth(birthmonth);
				a1.setBirthYear(birthyear);
				a1.setVoivodship((String) request.getSession().getAttribute(
						"state"));
				a1.setUserId(userid);
				((TrainTicket) a1).setTicketClass((String) request.getSession()
						.getAttribute("ticketClass"));
				((TrainTicket) a1).setNoTransfer((boolean) request.getSession()
						.getAttribute("noTransfer"));
				((TrainTicket) a1).setBikeTransport((boolean) request
						.getSession().getAttribute("bikeTransport"));

			}

			Session session = HibernateUtil.configureSessionFactory()
					.openSession();
			Transaction tx = null;
			try {
				tx = session.beginTransaction();

				session.save(a1);

				tx.commit();
			} catch (ConstraintViolationException ee) {

			} catch (HibernateException e) {
				if (tx != null)
					tx.rollback();
				e.printStackTrace();
			} finally {
				session.close();
			}
			request.getSession().setAttribute("pass", 0);
		}
		
		return mapping.findForward("success");

	}

}
