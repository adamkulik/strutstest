package comarch.zadanie1.actions;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;

import comarch.zadanie1.forms.RegisterForm;
import comarch.zadanie1.authenticate.*;
import comarch.zadanie1.database.HibernateUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		Md5 md5 = null;
		RegisterForm register = (RegisterForm) form;
		Session session = HibernateUtil.configureSessionFactory().openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			String newUsername = register.getNewusername();
			String newPassword = register.getNewpassword();
			String visibleName = register.getVisiblename();
			
			md5 = new Md5(newPassword);
			String hashedPassword = md5.hashMe();
					
			User user = new User(newUsername, hashedPassword, visibleName);
			Integer userId = (Integer) session.save(user);

			tx.commit();
		} catch (ConstraintViolationException ee) {

		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mapping.findForward("success");
	}

}