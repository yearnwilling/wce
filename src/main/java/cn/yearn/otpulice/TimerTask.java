package cn.yearn.otpulice;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
/**
 * task测试类
 * @author yearnwilling
 *
 */
@Component
public class TimerTask {   
	 @Scheduled(cron="0/5 * * * * ? ") //间隔5秒执行  
	 public void printSomething(){  
	        //内容就是打印一句话  
	        System.out.println("this is andy schedule");  
	    }  
 }   