package org.jesus.meslap.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value="/index.do")
	public ModelAndView indexView(HttpServletRequest req,HttpServletResponse resp){
		log.debug("MainController - Main Method!!");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main");
		return mav;
	}
	
	/*@RequestMapping(value="/worship.do")
	public ModelAndView worshipView(HttpServletRequest req,HttpServletResponse resp){
		log.debug("MainController - Worship Method!!");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/worship");
		return mav;
	}
	
	@RequestMapping(value="/mission.do")
	public ModelAndView missionView(HttpServletRequest req,HttpServletResponse resp){
		log.debug("MainController - Mission Method!!");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mission");
		return mav;
	}*/
	
	@RequestMapping(value="/news.do")
	public ModelAndView newsView(HttpServletRequest req,HttpServletResponse resp){
		log.debug("MainController - news Method!!");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/news");
		return mav;
	}
}
