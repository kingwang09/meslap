package org.jesus.meslap.board.dao;

import java.util.List;

import org.jesus.meslap.entity.Board;
import org.jesus.meslap.entity.BoardFile;

public interface BoardDAO {
	
	public List<Board> getBoardList(String boardCode);
	public void saveBoard(Board board);
	public Board getBoard(Integer boardId);
	public void deleteBoard(Integer boardId);
	public void saveBoardFile(BoardFile boardFile);
}
