package cn.yearn.otpulice;

import java.util.Map;


public class sqlProvider {
	
	public String select(Map<String, Object> map) {
        return map.get("sql").toString();
    }  
	
}
