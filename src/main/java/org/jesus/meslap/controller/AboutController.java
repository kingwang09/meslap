package org.jesus.meslap.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/about")
public class AboutController {
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value="/intro.do")
	public ModelAndView indexView(HttpServletRequest req,HttpServletResponse resp){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/about/intro");
		return mav;
	}
	
	@RequestMapping(value="/members.do")
	public ModelAndView worshipView(HttpServletRequest req,HttpServletResponse resp){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/about/members");
		return mav;
	}
	
	@RequestMapping(value="/times.do")
	public ModelAndView missionView(HttpServletRequest req,HttpServletResponse resp){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/about/times");
		return mav;
	}
	
	@RequestMapping(value="/road.do")
	public ModelAndView newsView(HttpServletRequest req,HttpServletResponse resp){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/about/road");
		return mav;
	}
}
