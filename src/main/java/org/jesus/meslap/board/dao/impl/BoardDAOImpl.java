package org.jesus.meslap.board.dao.impl;

import java.util.List;







import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.jesus.meslap.board.dao.BoardDAO;
import org.jesus.meslap.entity.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession(){
		Session session = null;//sessionFactory.getCurrentSession();
		if(session == null)
			session = sessionFactory.openSession();
		return session;
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Board> getBoardList(String boardCode){
		Query query = getSession().createQuery("from Board b where b.boardCode=:boardCode");
		query.setParameter("boardCode", boardCode);
		return query.list();
	}

	public Integer saveBoard(Board board) {
		return (Integer) getSession().save(board);
	}

	public Board getBoard(Integer boardId) {
		Query query = getSession().createQuery("from Board b where b.id = :boardId");
		query.setParameter("boardId", boardId);
		return (Board) query.uniqueResult();
	}
}
