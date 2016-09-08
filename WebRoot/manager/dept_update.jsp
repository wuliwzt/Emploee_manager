<%@ page language="java" import="java.util.*,com.entity.*,com.daoImpl.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>���²�����Ϣ</title>
		<style type="text/css">
			.STYLE1 { color: #FFFFFF; font-weight: bold; font-family: "����_GB2312"; }
			.STYLE2 { font-family: "����_GB2312"; font-weight: bold; font-size: 20px}
    	</style>
		<script language="javascript" src="../js/validate.js"></script>
	</head>

	<body bgcolor="#6CA6CD">
		<center>
			<table width="900" border="0" style="border: solid gray 1pt solid;">
				<tr> <td height="76" colspan="2"> <%@ include file="../head.jsp"%> </td> </tr>
				<tr>
					<td height="29" bgcolor="#6C7B8B">
						<span class="STYLE1">��ǰλ�ã�<a href="../EmploeTable" class="STYLE1">������Ϣ</a> &gt;&gt; <a href="../ManagerDeptTable" class="STYLE1">���Ź���</a>&gt;&gt;���²�����Ϣ</span>	
					</td>
					<td height="29" bgcolor="#6C7B8B" align="right">
						<span class="STYLE1">��ǰ�û���<%=session.getAttribute("mname")%></span>
						<input type="button" name="back" value="�˳���½" onclick="window.location.replace('../index.jsp')">
					</td>	
				</tr>
				<tr>
					<td height="254" colspan="2" align="center">
						<form action="../ManagerDeptUpdate_table" onSubmit="return emploe_validate()">
							<table width="60%" border="0" style="background-image: url(../images/formbj3.jpg)">
								<tr>
									<td class="STYLE2" colspan="2">
										���Ż�����Ϣ��
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										���ű�ţ�
									</td>
									<td width="65%" align="left">
										<input name="name" type="text" readonly="readonly" value="${sessionScope.dept.did }" />
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										�������ƣ�
									</td>
									<td width="65%" align="left">
										<input name="name" type="text" value="${sessionScope.dept.dname }" />
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										����������
									</td>
									<td width="65%" align="left">
										<input name="" type="text" value="${sessionScope.dept.dnumber }" />
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										���ŵ�ַ��
									</td>
									<td width="65%" align="left">
										<input name="" type="text" value="${sessionScope.dept.daddr }" />
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										���ž���
									</td>
									<td width="65%" align="left">
										<select name="eid">
											<option value="">--ѡ����-- </option>
											<%
												ArrayList<Dept> deptList = (ArrayList<Dept>)session.getAttribute("deptList");
												EmploeDaoImpl edi = new EmploeDaoImpl();
												for(Dept dept : deptList){
											%>
											<option value="<%=dept.getEid() %>"><%
											Emploe emploe = edi.getEmploeById(dept.getEid());
											out.print(emploe.getEname());
											 %></option>
											<% 	
												}
											 %>
										</select>
									</td>
								</tr>				
								<tr>
									<td width="35%" align="right">
										<input type="reset" value="����"/>
									</td>
									<td width="65%" align="left">
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
