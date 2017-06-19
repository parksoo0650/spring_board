package com.board.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired 
	
	@RequestMapping("/")
	public String goMain(Model model){
		String context=((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest().getContextPath();
		model.addAttribute("context",context);
		return "public:board/index";
	}
	@RequestMapping(value="/list")
	public @ResponseBody Map<?, ?> list(@RequestBody Map<?, ?> paramMap){
		Map<?, ?> map = new HashMap<>();
		logger.info("SeoungsooController - list() {}","Enter");
		
		return map;
	}
}
