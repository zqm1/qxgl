package com.web.ssm.controller.system;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.ssm.service.MusicInfoService;

@Controller
public class IndexController {
	private static final String INDEX = "index";
	@Resource
	private MusicInfoService musicService;

	@RequestMapping(value = "/show")
	public String getIndex() {
		return INDEX;
	}

	@RequestMapping(value = "/login")
	public String getLogin() {
		return "system/login";
	}

	@RequestMapping(value = "/menu")
	public String getmenu() {
		System.out.println("zahuishine");

		return "system/menu";
	}

}
