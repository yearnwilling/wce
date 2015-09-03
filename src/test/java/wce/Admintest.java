package wce;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.yearn.mapper.AdminMapper;
import cn.yearn.model.Admin;


public class Admintest {
	public static void main( String[] args )
    {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		AdminMapper adminMapper = applicationContext.getBean(AdminMapper.class);


		Admin admin = adminMapper.selectByPrimaryKey(1);
		System.out.println("todo's new id is " + admin.getId());
    }
}
