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
	
	@RequestMapping(value="/main/test.do")
	public ModelAndView indexView(HttpServletRequest req,HttpServletResponse resp){
		log.debug("MainController - Main Method!!");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main/test");
		return mav;
	}
}
