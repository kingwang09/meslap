package org.jesus.meslap.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jesus.meslap.board.service.BoardService;
import org.jesus.meslap.entity.Board;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@Autowired
	private HttpServletRequest request;
	
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
		log.debug("[Board Controller - write(GET)] start");
		log.debug("	boardCode = "+boardCode);
		return getDefaultMav("board/write", boardCode);
	}
	
	@RequestMapping(value="/{boardCode}/write",method=RequestMethod.POST)
	public ModelAndView writeLogic(@ModelAttribute("board") Board board){
		log.debug("[Board Controller - write(POST)] start");
		log.debug("	board = "+board);
		
		String path = request.getSession().getServletContext().getRealPath("/meslapFiles");
		log.debug("	path = "+path);
		bService.saveBoard(board, path);
		return getDefaultMav("redirect:/board/"+board.getBoardCode()+"/list.do", board.getBoardCode());
	}
	
	@RequestMapping(value="/{boardCode}/{boardId}/update",method=RequestMethod.GET)
	public ModelAndView update(@PathVariable String boardCode, @PathVariable Integer boardId){
		log.debug("[Board Controller - update(GET)] start");
		log.debug("	boardCode = "+boardCode);
		log.debug("	boardId = "+boardId);
		Board board = bService.getBoard(boardId);
		ModelAndView mav = getDefaultMav("board/update", boardCode);
		mav.addObject("board",board);
		return mav; 
	}
	
	@RequestMapping(value="/{boardCode}/{boardId}/update",method=RequestMethod.POST)
	public ModelAndView updateLogic(@ModelAttribute("board") Board board){
		log.debug("[Board Controller - update(POST)] start");
		log.debug("	board = "+board);
		bService.updateBoard(board);
		ModelAndView mav = getDefaultMav("redirect:/board/"+board.getBoardCode()+"/"+board.getId()+"/view.do", board.getBoardCode());
		return mav;
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
	
	@RequestMapping("/{boardCode}/{boardId}/delete")
	public ModelAndView delete(@PathVariable String boardCode, @PathVariable Integer boardId){
		log.debug("[Board Controller - delete] start");
		log.debug("	boardCode = "+boardCode);
		log.debug("	boardId = "+boardId);
		bService.deleteBoard(boardId);
		
		return getDefaultMav("redirect:/board/"+boardCode+"/list.do", boardCode);
	}
}
