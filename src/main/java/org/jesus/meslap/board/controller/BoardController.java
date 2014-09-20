package org.jesus.meslap.board.controller;

import java.util.List;

import org.jesus.meslap.board.service.BoardService;
import org.jesus.meslap.entity.Board;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class BoardController {

	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BoardService bService;
	
	private ModelAndView getDefaultMav(String viewName, String boardCode){
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("boardCode",boardCode);
		return mav;
	}
	
	@RequestMapping("/{boardCode}/list")
	public ModelAndView list(@PathVariable String boardCode){
		log.debug("[Board Controller - list] start");
		log.debug("	boardCode = "+boardCode);
		List<Board> boards = bService.getBoardList(boardCode);
		ModelAndView mav = getDefaultMav("board/list", boardCode);
		mav.addObject("boards", boards);
		return mav;
	}
	
	@RequestMapping(value="/{boardCode}/write",method=RequestMethod.GET)
	public ModelAndView write(@PathVariable String boardCode){
		log.debug("[Board Controller - write] start");
		log.debug("	boardCode = "+boardCode);
		return getDefaultMav("board/write", boardCode);
	}
	
	@RequestMapping("/{boardCode}/{boardId}/view")
	public ModelAndView view(@PathVariable String boardCode, @PathVariable Integer boardId){
		log.debug("[Board Controller - view] start");
		log.debug("	boardCode = "+boardCode);
		log.debug("	boardId = "+boardId);
		Board viewBoard = bService.getBoard(boardId);
		ModelAndView mav = getDefaultMav("board/view", boardCode);
		mav.addObject("board",viewBoard);
		return mav;
	}
}
