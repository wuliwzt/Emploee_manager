<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>������Ϣ</title>
		<script language="javascript" src="../js/validate.js"></script>
		<style type="text/css">
			.STYLE1 { color: #FFFFFF; font-weight: bold; font-family: "����_GB2312"; }
			.STYLE2 { font-family: "����_GB2312"; font-weight: bold; font-size: 20px}
		</style>		
	</head>
	<body bgcolor="#6CA6CD">
		<center>
			<table width="900" border="0"">
				<tr> <td height="76" colspan="2"> <%@ include file="../head.jsp"%> </td> </tr>
				<tr>
					<td height="29" bgcolor="#6C7B8B">
						<span class="STYLE1">��ǰλ�ã�<a href="show_self.jsp" class="STYLE1">������Ϣ</a> &gt;&gt; <a href="news_table.jsp" class="STYLE1">������Ϣ��</a>&gt;&gt; ������Ϣ</span>	
					</td>
					<td height="29" bgcolor="#6C7B8B" align="right">
						<span class="STYLE1">��ǰ�û���${sessionScope.emploe.ename }</span>
						<input type="button" name="back" value="�˳���½" onclick="window.location.replace('../index.jsp')">
					</td>	
				</tr>
				<tr>
					<td height="254" align="center" colspan="2">
						<form action="../EmploeNewsAdd" method="post" onSubmit="return emploe_validate()">
							<table width="60%" border="0" style="background-image: url(../images/formbj1.jpg)">
								<tr>
									<td class="STYLE2" colspan="2">
										������Ϣ��
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										��Ϣ���⣺
									</td>
									<td width="65%" align="left">
										<input name="mtitle" type="text"/>
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										�����ˣ�
									</td>
									<td width="65%" align="left">
										<input name="muser" type="text"/>
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										���ݣ�
									</td>
									<td width="65%" align="left">
										<textarea rows="10" cols="19" name="mcontent"></textarea>
									</td>
								</tr>																														
								<tr>
									<td width="35%" align="right"> </td>
									<td width="65%" align="left">
									<input type="reset" value="���"/>
										<input type="submit" value="����" />
									</td>
								</tr>
							</table>
						</form>
					</td>
				</tr>
				<tr>
					<td height="76" colspan="2">
						<%@ include file="../tail.jsp"%>
					</td>
				</tr>
			</table>
		</center>
	</body>
</html>
