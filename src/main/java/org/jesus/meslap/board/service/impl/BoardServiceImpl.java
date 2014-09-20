package org.jesus.meslap.board.service.impl;

import java.util.Date;
import java.util.List;

import org.jesus.meslap.board.dao.BoardDAO;
import org.jesus.meslap.board.service.BoardService;
import org.jesus.meslap.entity.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDao;
	
	@Transactional(value="transactionManager")
	public List<Board> getBoardList(String boardCode) {
		return boardDao.getBoardList(boardCode);
	}
	
	@Transactional(value="transactionManager")
	public void saveBoard(Board board){
		board.setWdate(new Date());
		boardDao.saveBoard(board);
	}
	
	@Transactional(value="transactionManager")
	public void updateBoard(Board board){
		board.setMdate(new Date());
		boardDao.saveBoard(board);
	}

	@Transactional(value="transactionManager")
	public Board getBoard(Integer boardId) {
		return boardDao.getBoard(boardId);
	}

	@Transactional(value="transactionManager")
	public void deleteBoard(Integer boardId) {
		boardDao.deleteBoard(boardId);
	}

}
