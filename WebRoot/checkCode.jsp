<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String str = request.getParameter("code");
	String trueCode = (String)request.getSession().getAttribute("code");
	if(str.equalsIgnoreCase(trueCode)){
%>
	<font color="green">��</font>
<% 	
	}else{
	%>
	<font color="red">��</font>
	<% 
	}
 %>

