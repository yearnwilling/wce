<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

	<form action="${contextPath}/public/register" id='form' method="post"> 
		
			<div>
				<label>
					<span>用户名</span><span><input type='text' name='account' class="input required" /></span>
				</label>
			</div>
			<div>
				<label>
					<span>密码 </span><span><input type='password' name='password' id="password" class="input"></span></br>
					<span>确认密码 </span><span><input type= 'password' name='repassword' class="input"></span>
				</label>
			</div>
			<div>
				<label>
					<span>邮箱</span>
					<input type="text" name="email" id="email" class="input required email"/>
					
				</label>
			</div>
			<div>
				<label>
					<span><input type='submit' value='注册' id="submit"  ></span><span id="msg"></span>
				</label>
			</div>
		
	</form>
<script src="${contextPath}/static/jquery/jquery.js" type="text/javascript"></script>
<script src="${contextPath}/static/jquery/jquery.form.js" type="text/javascript"></script>
<script src="${contextPath}/static/jquery/jquery.validate.js" type="text/javascript"></script>
<script src="${contextPath}/static/jquery/messages_zh.js" type="text/javascript"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$("#form").validate({
			rules:{
				password : {
					required :true
				},
				repassword : {
					required : true ,
					equalTo : "#password"
				}
			},
			messages:{
				password : {
					required : "请输入密码"
				},
				repassword : { 
					required : "请再次输入密码",
					equalTo : "两次密码不一致"
				}
			}
					  
		});
	
	$("#form").ajaxForm({
		dataType:'json',
		success:function(data){
			if(data.status == 1 ){
				$("#msg").html(data.massage);
				 setTimeout(function () {
        			window.location.href="${contextPath}/index/index";
        		 }, 1000);
				
			}else{
				$("#msg").html(data.massage);
			}
		}
	});

});
	// $("[name='repassword']").blur(function(){
	// 	var password = $("[name='password']").val();
	// 	if($(this).val() == password){
	// 		$("#shower").html('');
	// 		if($(this).val() != ""){
	// 			$('#submit').removeAttr("disabled");
	// 		}
	// 	}else{
	// 		$("#shower").html('ä¸¤æ¬¡å¯ç ä¸ç¸å');
	// 		$('#submit').attr("disabled",true);
	// 	}
	// });
	// $("[name = 'password']").blur(function(){
	// 	var repassword = $("[name='repassword']").val();
	// 	if($(this).val()== "" || $(this).val() == null){
	// 		$("#pashow").html('è¯·è¾å¥å¯ç ');
	// 		$('#submit').attr("disabled",true);
	// 	}else{
	// 		$("#pashow").html('');
	// 		if($(this).val() == repassword){
	// 			$("#shower").html('');
	// 			$('#submit').removeAttr("disabled");
	// 		}else{
	// 			$("#shower").html('ä¸¤æ¬¡å¯ç ä¸ç¸å');
	// 			$('#submit').attr("disabled",true);
	// 	    }
	// 	}
		
	// });
	// $("[name = 'account']").blur(function(){
	// 	if($(this).val()== "" || $(this).val() == null){
	// 		$("#acshow").html('è¯·è¾å¥ç¨æ·å');
	// 		$('#submit').attr("disabled",true);
	// 	}else{
	// 		$("#acshow").html('');
	// 		if($("[name='repassword']").val() != "" && $("[name='password']").val() != ""){
	// 			$('#submit').removeAttr("disabled");
	// 		}
	// 	}
	// });

	

</script>
</body>
</html>