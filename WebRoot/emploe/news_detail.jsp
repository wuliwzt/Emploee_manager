<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
		<title>��Ϣ��������</title>
		<style type="text/css">		
			.STYLE1 { color: #FFFFFF; font-weight: bold; font-family: "����_GB2312"; }
			.STYLE2 { font-family: "����_GB2312"; font-weight: bold; }		
		</style>
	</head>
	<body bgcolor="#6CA6CD">
		<center>
			<table width="900" border="0" style="border: solid gray 1pt solid;">
				<tr> <td height="76" colspan="2"> <%@ include file="../head.jsp"%> </td> </tr>
				<tr>
					<td height="29" bgcolor="#6C7B8B">
						<span class="STYLE1">��ǰλ�ã�<a href="emploe_table.jsp" class="STYLE1">������Ϣ</a> &gt;&gt; <a href="news_table.jsp" class="STYLE1">������Ϣ</a>&gt;&gt; ��������</span>	
					</td>
					<td height="29" bgcolor="#6C7B8B" align="right">
						<span class="STYLE1">��ǰ�û���<%=session.getAttribute("username")%></span>
						<input type="button" name="back" value="�˳���½" onclick="window.location.replace('../index.jsp')">
					</td>	
				</tr>
				<tr>
					<td height="254" align="center" colspan="2">
						<table width="70%" height="100%" border="0" style="background-image: url(../images/formbj2.jpg)">
							<tr height="10%">
								<td width="40%" align="right">
										��Ϣ��ţ�
								</td>
								<td width="60%" align="center">
									<c:out value="${sessionScope.msg.mid}"></c:out>
								</td>
							</tr>
							<tr height="10%">
								<td width="20%" align="right">
										��Ϣ���⣺
								</td>
								<td width="25%" align="center">
									<c:out value="${sessionScope.msg.mtitle}"></c:out>
								</td>
							</tr>
							<tr height="10%">
								<td width="20%" align="right">
										������Ϣʱ�䣺
								</td>
								<td width="25%" align="center">
									<c:out value="${sessionScope.msg.mtime}"></c:out>
								</td>
							</tr>
							<tr height="10%">
								<td align="right">
									���ݣ�				
								</td>
								<td align="center">
									<c:out value="${sessionScope.msg.mcontent}"></c:out>
								</td>
							</tr>
							<tr height="10%" >
								<td></td>
								<td align="center">
									<input type="button" value="����" onclick="window.location.replace('news_table.jsp')" />
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="76" colspan="2">
						<br><br><br>
						<%@ include file="../tail.jsp"%>
					</td>
				</tr>
			</table>
		</center>
	</body>
</html>
