<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>��½</title>
		<style type="text/css">		
			.STYLE1 {
				color: red;
				font-weight: bold;
				font-family: "����_GB2312";
				font-size: large;
			}	
		</style>

	</head>

	<body bgcolor="#6CA6CD">
		<center>
			
				
			<%
				if(request.getParameter("log").equals("unlogin")){
			%>
			<span class="STYLE1"> <br> <br> <br> <br><span class="STYLE1"> <br> <br> <br> <br><br> <br> <br> <br> ����û�е�¼ϵͳ,���¼�� </span>
			<% 
					response.setHeader("refresh", "2;url=login.jsp");
				}else if(request.getParameter("log").equals("fail")){
			%>
			<br> <br> <br> <br>ע��ʧ��</span>
			<%	
				response.setHeader("refresh", "2;url=register.jsp");
				}else if(request.getParameter("log").equals("success")){
			%>
			<span class="STYLE1"> <br> <br> <br> <br><br> <br> <br> <br>ע��ɹ�</span>
			<%	
				response.setHeader("refresh", "2;url=login.jsp");	
				}else if(request.getParameter("log").equals("epassword")){
			%>
			<span class="STYLE1" > <br> <br> <br> <br><br> <br> <br> <br><font color="red" size="7">���������ǣ�${sessionScope.emploe.epassword }</font></span>
			<%		
				response.setHeader("refresh", "10;url=login.jsp");
				}
			%>
		</center>
	</body>
</html>
