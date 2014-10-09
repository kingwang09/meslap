package org.jesus.meslap.board.service.impl;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.jesus.meslap.board.dao.BoardDAO;
import org.jesus.meslap.board.service.BoardService;
import org.jesus.meslap.entity.Board;
import org.jesus.meslap.entity.BoardFile;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
public class BoardServiceImpl implements BoardService {
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BoardDAO boardDao;
	
	@Transactional(value="transactionManager")
	public List<Board> getBoardList(String boardCode) {
		return boardDao.getBoardList(boardCode);
	}
	
	@Transactional(value="transactionManager")
	public void saveBoard(Board board, String filePath){
		board.setWdate(new Date());
		boardDao.saveBoard(board);//board 저장 후에 첨부파일 저장 수행해야함.
		MultipartFile[] logicalFiles = board.getLogicalFiles();
		for(int i=0; i<logicalFiles.length;i++){
			MultipartFile tempFile = logicalFiles[i];
			log.debug("FileName = "+tempFile.getName());
			log.debug("OriginalFileName = "+tempFile.getOriginalFilename());
			log.debug("\n");
			Set<BoardFile> files = new HashSet<BoardFile>();
			BoardFile boardFile = new BoardFile(filePath, tempFile.getOriginalFilename(), board);
			boardDao.saveBoardFile(boardFile);
			files.add(boardFile);
			board.setFiles(files);
		}//for
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
