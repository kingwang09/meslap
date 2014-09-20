package org.jesus.meslap.board.dao.impl;

import java.util.List;








import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
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
		Session session = sessionFactory.getCurrentSession();
		if(session == null)
			session = sessionFactory.openSession();
		return session;
	}
	
	@SuppressWarnings("unchecked")
	public List<Board> getBoardList(String boardCode){
		Query query = getSession().createQuery("from Board b where b.boardCode=:boardCode");
		query.setParameter("boardCode", boardCode);
		List<Board> list = query.list();
		//tx.commit();
		return list;
	}
	
	public void saveBoard(Board board) {
		getSession().saveOrUpdate(board);
		//return (Integer) getSession().saveOrUpdate(board);
	}

	public Board getBoard(Integer boardId) {
		Query query = getSession().createQuery("from Board b where b.id = :boardId");
		query.setParameter("boardId", boardId);
		Board result = (Board) query.uniqueResult();
		return result;
	}
	
	public void deleteBoard(Integer boardId){
		Board board = getBoard(boardId);
		getSession().delete(board);
		//Query query = getSession().createQuery("delete from Board b where b.id = :boardId");
		//query.setParameter("boardId", boardId);
		//query.executeUpdate();
	}
}
