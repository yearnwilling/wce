package cn.yearn.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.yearn.otpulice.AjaxReturn;

@Controller
@RequestMapping(value={"public"})
public class PublicController {
	
	@RequestMapping(value={"register"})
	public String index(Model model,HttpServletRequest request,HttpServletResponse response) {
		if(request.getMethod().equals("POST")){
			int a = 0;
			return AjaxReturn.ajaxReturn(response, null, "SUCCESS", 1);
		}
		return "public/register";
	}
}
