package org.jesus.meslap.worship.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.jesus.meslap.entity.Worship;
import org.jesus.meslap.worship.dao.WorshipDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WorshipDAOImpl implements WorshipDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession(){
		Session session = sessionFactory.getCurrentSession();
		if(session == null)
			session = sessionFactory.openSession();
		return session;
	}
	
	public void save(Worship worship) {
		getSession().saveOrUpdate(worship);
	}

}
