package org.jesus.meslap.board.service.impl;

import java.util.List;

import org.jesus.meslap.board.dao.BoardDAO;
import org.jesus.meslap.board.service.BoardService;
import org.jesus.meslap.entity.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boadDao;
	
	public List<Board> getBoardList(String boardCode) {
		return boadDao.getBoardList(boardCode);
	}
	
	public Integer saveBoard(Board board){
		return boadDao.saveBoard(board);
	}

	public Board getBoard(Integer boardId) {
		return boadDao.getBoard(boardId);
	}

}
