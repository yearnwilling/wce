package cn.yearn.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.yearn.model.Admin;
import cn.yearn.services.AdminService;

@Controller
@RequestMapping(value={"index",""})
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value={"","index"})
	public String index(Model model,HttpServletRequest request,HttpServletResponse response) {
		Map<String,Object> map = new HashMap<String,Object>();
		String a = " a' or 1=1--";
		map.put("pass", a);
		String b = " dngian '"+map.get("pass") +"'";
		List<Map<String,Object>> select = adminService.select("SELECT * FROM `admin`");
        return "index/index";
    }
     
}