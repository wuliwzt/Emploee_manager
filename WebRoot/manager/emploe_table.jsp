  <%@ page language="java" import="java.util.*,com.entity.*,com.daoImpl.*"
	pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>����Ա��ҳ</title>
		<script language="javascript" src="../js/validate.js"></script>
		<style type="text/css">
			.STYLE1 { color: #FFFFFF; font-weight: bold; font-family: "����_GB2312"; font-size: 12pt; }
			.STYLE2 { font-family: "����_GB2312"; font-weight: bold; font-size: 12pt; height: 28pt; }			
			.STYLE3 { font-family: "����"; font-size: 12pt; height: 23pt; }
			.STYLE4 { font-family: "����"; font-size: 13pt; }
			.STYLE5 { font-family: "����"; font-size: 18px;color: green}
		</style>
	</head>

	<body bgcolor="#6CA6CD">
		<center>
			<table width="900" style="border: solid gray 1pt solid;">
				<tr> <td height="76" colspan="2"> <%@ include file="../head.jsp"%> </td> </tr>
				<tr>
					<td height="28" bgcolor=#6C7B8B align="left" class="STYLE1"  width="30%">
						��ǰ�û���<%=session.getAttribute("mname")%>
					</td>	
					<td height="28" bgcolor=#6C7B8B align="right"  width="70%">
						<input type="button" value="��Ϣ����" class="STYLE5" onclick="window.location.replace('../NewsTable')"/>
						<input type="button" value="���Ź���" class="STYLE5" onclick="window.location.replace('../ManagerDeptTable')"/>
						<input type="button" value="���Ա��" class="STYLE5" onclick="window.location.replace('../ManagerEmploeTable_add')"/>
						<input type="button" value="�˺Ź���" style="color:red" onclick="window.location.replace('show_manager.jsp')"/>
						<input type="button" value="�˳���¼" style="color:red"/>
					</td>
				</tr>
				<tr>
					<td height="254" colspan="2" valign="top">
						<table width="100%" border="0">
							<tr>
								<td height="30" colspan="5" class="STYLE4" align="center">
									<br>
									<form action="../SearchEmploe" method="post">
										��Ϣ���ټ�����
										������ <input type="text" name="ename" style="width: 80px; height: 20px;">&nbsp;&nbsp; 
										Ա�����: <input type="text" name="eid" style="width: 60px; height: 20px;">&nbsp;&nbsp; 
										���ţ� <select name="dname" style="width: 110px;">
												<option value="" selected="selected"> -- ��ѡ�� -- </option>
													<c:forEach var="dept" items="${sessionScope.deptList }">
														<option value="${dept.dname }"> -- ${dept.dname } -- </option>
													</c:forEach>
										    </select>
										<input type="submit" value="��ѯ">
									</form>
									<br>
								</td>
							</tr>
							<tr align="center">
								<td width="58%" height="36" class="STYLE4" align="left">
<!-- ��ʾһ������ҳ��һ������Ա�� ------------->		           ��${sessionScope.pageNow }ҳ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��${sessionScope.lineCount}��Ա��
								</td>
								<td width="5%">
									<input type="button" value="��ҳ" onclick="location.replace('../EmploeTable?n=1')">
								</td>
								<td width="5%">
									<input type="button" value="��һҳ" onclick="location.replace('../EmploeTable?n=${sessionScope.pageNow - 1 }')">
								</td>
								<td width="5%">
									<input type="button" value="��һҳ" onclick="location.replace('../EmploeTable?n=${sessionScope.pageNow + 1 }')">
								</td>
								<td width="5%">
									<input type="button" value="βҳ" onclick="location.replace('../EmploeTable?n=${sessionScope.pageCount}')">
								</td>
							</tr>
							<tr valign="middle" align="center">
								<td colspan="5">
									<table width="100%" border="3" bordercolor="#6C7B8B" style="border-collapse: collapse; border-spacing: 0;">
										<tr>
											<th width="10%" class="STYLE2">
												ͼ��
											</th>
											<th width="10%" class="STYLE2">
												����
											</th>
											<th width="10%" class="STYLE2">
												Ա�����
											</th>
											<th width="14%" class="STYLE2">
												����
											</th>
											<th width="14%" class="STYLE2">
												��ϵ�绰
											</th>	
											<th colspan="3" class="STYLE2">
												ҵ�����
											</th>
										</tr>
<!-- ѭ��������ݿ������� ------------------------------------------------------->	
										<%
											ArrayList<Emploe> listByPage = (ArrayList<Emploe>)session.getAttribute("listByPage");
											DeptDaoImpl pdi = new DeptDaoImpl();
											for(Emploe emploe : listByPage){
										%>
										<tr align="center">
											<td class="STYLE3">
												<img src="<%=emploe.getEphoto() %>" width="50" height="50"/>
											</td>
											<td class="STYLE3">
											<%=emploe.getEname() %>	
											</td>
											<td class="STYLE3">
											<%=emploe.getEid() %>	
											</td>
											<td class="STYLE3">
											<%
												Dept dept = pdi.getDeptById(emploe.getDid());
												out.print(dept.getDname());
											
											 %>
											</td>
											<td class="STYLE3">
											<%=emploe.getEphone() %>
											</td>
											<td width="7%" class="STYLE3">
												<a href="../EmploeDetail?eid=<%=emploe.getEid() %>"><img src="../images/detail.gif"/></a>
											</td>
											<td width="7%" class="STYLE3">
												<a href="../ManagerShowSelf?eid=<%=emploe.getEid() %>"><img src="../images/modify.gif" width="25"/></a>
											</td>
											<td width="7%" class="STYLE3">	
												<a href="../EmploeRemove?eid=<%=emploe.getEid() %>"><img src="../images/del.gif" width="25" onclick="return f_delete();"/></a>			
											</td>
										</tr>
										<% 
											}
										%>
										
<!-- ---------------------------------------------------------------------------------------------- -->													
									</table>		
								</td>
							</tr>
						</table>
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
