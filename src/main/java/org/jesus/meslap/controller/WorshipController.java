package org.jesus.meslap.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/worship")
public class WorshipController {
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value="/main.do")
	public ModelAndView indexView(HttpServletRequest req,HttpServletResponse resp){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/worship/main");
		return mav;
	}
	
}
