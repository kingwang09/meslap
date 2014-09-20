package org.jesus.meslap.board.dao;

import java.util.List;

import org.jesus.meslap.entity.Board;

public interface BoardDAO {
	
	public List<Board> getBoardList(String boardCode);
	public void saveBoard(Board board);
	public Board getBoard(Integer boardId);
	public void deleteBoard(Integer boardId);
}
