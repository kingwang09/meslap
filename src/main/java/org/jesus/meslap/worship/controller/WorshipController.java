package org.jesus.meslap.worship.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jesus.meslap.entity.Worship;
import org.jesus.meslap.util.MeslapUtils;
import org.jesus.meslap.worship.service.WorshipService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/worship")
public class WorshipController {
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private WorshipService wService;
	@Autowired
	private MeslapUtils meslapUtils;
	
	@RequestMapping(value="/main.do")
	public ModelAndView indexView(HttpServletRequest req,HttpServletResponse resp){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/worship/main");
		return mav;
	}
	
	@RequestMapping(value="/admin/write.do", method=RequestMethod.GET)
	public ModelAndView adminWrite(HttpServletRequest req,HttpServletResponse resp){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/worship/write");
		return mav;
	}
	@RequestMapping(value="/admin/write.do", method=RequestMethod.POST)
	public ModelAndView adminWriteLogic(HttpServletRequest request, @ModelAttribute("worship") Worship worship){
		String path = meslapUtils.getPath(request, Worship.WORSHIP_FOLDER);
		wService.write(path, worship);
		return new ModelAndView("redirect:/worship/main.do");
	}
}
