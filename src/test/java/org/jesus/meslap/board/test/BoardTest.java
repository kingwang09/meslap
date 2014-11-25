package org.jesus.meslap.board.test;

import java.util.Date;
import java.util.List;

import org.jesus.meslap.board.dao.BoardDAO;
import org.jesus.meslap.entity.Board;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:META-INF/spring/applicationContext.xml")
@ActiveProfiles("development")
@Transactional
public class BoardTest {
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BoardDAO boardDao;
	
//	@Test
//	public void listTest(){
//		List<Board> list = boardDao.getBoardList("test");
//		log.debug("list = "+list);
//		System.out.println(list);
//	}
	
	@Before
	public void insertTest(){
		log.debug("insert Test DB Data");
		Board testBoard = new Board();
		testBoard.setBoardCode("test");
		testBoard.setTitle("test1");
		testBoard.setContent("test1 Content");
		testBoard.setWriter("hejin");
		testBoard.setWdate(new Date());
		
		boardDao.saveBoard(testBoard);
	}
	
}
