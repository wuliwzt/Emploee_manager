<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>��Ӳ���</title>
		<script language="javascript" src="js/validate.js"></script>
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
						<span class="STYLE1">��ǰλ�ã�<a href="../EmploeTable" class="STYLE1">������Ϣ</a> &gt;&gt; <a href="../ManagerDeptTable" class="STYLE1">���Ź���</a>&gt;&gt;��Ӳ���</span>	
					</td>
					<td height="29" bgcolor="#6C7B8B" align="right">
						<span class="STYLE1">��ǰ�û���<%=session.getAttribute("mname")%></span>
						<input type="button" name="back" value="�˳���½" onclick="window.location.replace('../index.jsp')">
					</td>	
				</tr>
				<tr>
					<td height="254" align="center" colspan="2">
						<form action="../ManagerDeptAdd" method="post" onSubmit="return emploe_validate()">
							<table width="60%" border="0" style="background-image: url(../images/formbj1.jpg)">
								<tr>
									<td class="STYLE2" colspan="2">
										��Ӳ��ţ�
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										���ű�ţ�
									</td>
									<td width="65%" align="left">
										<input name="did" type="text"/>
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										�������ƣ�
									</td>
									<td width="65%" align="left">
										<input name="dname" type="text"/>
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										����������
									</td>
									<td width="65%" align="left">
										<input name="dnumber" type="text"/>
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										���ŵ�ַ��
									</td>
									<td width="65%" align="left">
										<input name="daddr" type="text"/>
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										���ž���
									</td>
									<td width="65%" align="left">
										<select name="eid">
											<option value="" selected="selected">--ѡ����-- </option>
											<c:forEach var="emploe" items="${sessionScope.pnameList}">
												<option value="${emploe.eid }">${emploe.ename }</option>
											</c:forEach>
										</select>
									</td>
								</tr>																														
								<tr>
									<td width="35%" align="right"> </td>
									<td width="65%" align="left">
									<input type="reset" value="���"/>
										<input type="submit" value="���" />
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
