<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>激活界面</title>
    


		<script type="text/javascript">
		onload=function(){
			setInterval(go, 1000);
		};
		var x=5; //利用了全局变量来执行
		function go(){
		x--;
			if(x>0){
			document.getElementById("sp").innerHTML=x;  //每次设置的x的值都不一样了。
			}else{
			location.href="<%=basePath%>user/login";
			}
		}
	</script>

  </head>
  
  <body>
    <h2>激活成功，</h2>  <h1 id="sp">5</h1>  <h2>秒钟后自动跳转</h2>
  </body>
</html>
