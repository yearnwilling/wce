package cn.yearn.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.SelectProvider;

import cn.yearn.otpulice.sqlProvider;


public interface SqlMapper {
	  @SelectProvider(type = sqlProvider.class, method = "select")
	  public List<Map<String, Object>> select(Map<String, Object> map);
}
