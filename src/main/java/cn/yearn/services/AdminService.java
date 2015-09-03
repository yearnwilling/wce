package cn.yearn.services;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.yearn.mapper.AdminMapper;
import cn.yearn.mapper.SqlMapper;
import cn.yearn.model.Admin;
import cn.yearn.model.AdminExample;

@Service
@Transactional
public class AdminService {
	@Autowired
	private AdminMapper mapper;
	@Autowired
	private SqlMapper sqlMapper;

	public int save(Admin admin){
		return mapper.insert(admin);
	}
	public List<Map<String, Object>> select(String sql){
		PageHelper.startPage(1, 3);
		AdminExample example = new AdminExample() ;
		example.or().andIdNotEqualTo(1);
		
		List<Admin> list = mapper.selectByExample(example);
		@SuppressWarnings({ "rawtypes", "unchecked" })
		PageInfo page = new PageInfo(list);
		List<Map<String, Object>>  d =new ArrayList<Map<String, Object>>();
		for (Admin admin : list) {
			Map<String, Object> map = new HashMap<String, Object>();
			d.add(map);
		}
		return d;
	}
	
}