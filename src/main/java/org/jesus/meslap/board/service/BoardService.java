package org.jesus.meslap.board.service;

import java.util.List;

import org.jesus.meslap.entity.Board;

public interface BoardService {

	public List<Board> getBoardList(String boardCode);
	public void saveBoard(Board board, String filePath);
	public void updateBoard(Board board);
	public Board getBoard(Integer boardId);
	public void deleteBoard(Integer boardId);
	
}
