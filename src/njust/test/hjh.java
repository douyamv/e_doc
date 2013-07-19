package njust.test;

import org.hibernate.Session;
import org.hibernate.Transaction;

import njust.PO.Admin;
import njust.Sessionfactory.HibernateSessionFactory;

public class hjh {
	public static void main(String[] args) {  
		Session session = HibernateSessionFactory.getSession();  
		Transaction tx = session.beginTransaction();  
		Admin admin=new Admin();
		admin.setUsername("hujiahong");
		admin.setPassword("hfjsdhfj");
		admin.setAuth(1);
		try {  
			session.save(admin);  
			tx.commit();  
		} catch (Exception e) {  
			tx.rollback();  
			e.printStackTrace();  
		}finally{  
			session.close();  
		}  
	}    

}
