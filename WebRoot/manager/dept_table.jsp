<%@ page language="java" import="java.util.*,com.entity.*,com.daoImpl.*"
	pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>���Ź���</title>
		<style type="text/css">
			.STYLE1 { color: #FFFFFF; font-weight: bold; font-family: "����_GB2312"; font-size: 12pt; }
			.STYLE2 { font-family: "����_GB2312"; font-weight: bold; font-size: 12pt; height: 28pt; }			
		</style>
		<script type="text/javascript">
			function f_confirm(){
				confirm("ȷ��ɾ��");
			}
		</script>
	</head>

	<body bgcolor="#6CA6CD">
		<center>
			<table width="900" style="border: solid gray 1pt solid;">
				<tr> <td height="76" colspan="2"> <%@ include file="../head.jsp"%> </td> </tr>
				<tr>
					<td height="29" bgcolor="#6C7B8B">
						<span class="STYLE1">��ǰλ�ã�<a href="../EmploeTable" class="STYLE1">������Ϣ</a> &gt;&gt; ���Ź���</span>	
					</td>
					<td height="29" bgcolor="#6C7B8B" align="right">
						<span class="STYLE1">��ǰ�û���<%=session.getAttribute("mname")%></span>
						<input type="button" name="back" value="�˳���½" onclick="window.location.replace('../index.jsp')">
					</td>	
				</tr>
				<tr>
					<td height="254" colspan="2">
						<table width="100%" border="0">
							<tr align="center">
								<td width="58%" height="36" class="STYLE4" align="left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      		                                                                 ��${sessionScope.pageNow}ҳ ; ��${sessionScope.lineCount}������
      		                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      		                        <input type="button"  value="��Ӳ���" onclick="window.location.replace('../ManagerDeptTable_add')" style="color:green;font-size: 15px">
								</td>
								<td width="5%">
									<input type="button" value="��ҳ" onclick="window.location.replace('../ManagerDeptTable?n=1')">
								</td>
								<td width="5%">
									<input type="button" value="��һҳ" onclick="window.location.replace('../ManagerDeptTable?n=${sessionScope.pageNow-1}')">
								</td>
								<td width="5%">
									<input type="button" value="��һҳ" onclick="window.location.replace('../ManagerDeptTable?n=${sessionScope.pageNow+1}')">
								</td>
								<td width="5%">
									<input type="button" value="βҳ" onclick="window.location.replace('../ManagerDeptTable?n=${sessionScope.pageCount}')">
								</td>
							</tr>
							<tr valign="middle" align="center">
								<td colspan="5">
									<table width="80%" border="3" bordercolor="#6C7B8B" style="border-collapse: collapse; border-spacing: 0;">
										<tr>
											<th width="15%" class="STYLE2">
												���ű��
											</th>
											<th width="15%" class="STYLE2">
												��������
											</th>
											<th width="15%" class="STYLE2">
												��������
											</th>
											<th width="15%" class="STYLE2">
												���ŵ�ַ
											</th>
											<th width="15%" class="STYLE2">
												���ž���
											</th>
											<th  class="STYLE2" colspan="2">
												����
											</th>	
										</tr>
<!-- ѭ��������ݿ������� ------------------------------------------------------->	
										<%
											ArrayList<Dept> deptlist = (ArrayList<Dept>)session.getAttribute("deptlist");
											EmploeDaoImpl edi = new EmploeDaoImpl();
											for(Dept dept : deptlist){
										%>
										
										<tr align="center">
											<td>
												<%=dept.getDid() %>
											</td>
											<td>
												<%=dept.getDname() %>
											</td>
											<td >
												<%=dept.getDnumber() %>
											</td>
											<td >
												<%=dept.getDaddr() %>
											</td>
											<td >
												<%
													Emploe emploe = edi.getEmploeById(dept.getEid());
													out.print(emploe.getEname());
												 %>
											</td>
											
											<td width="7%" class="STYLE3">
												<a href="../ManagerDeptUpdate?did=<%=dept.getDid() %></a>"><img src="../images/modify.gif"  width="15" /></a>
											</td>
											<td width="7%" class="STYLE3">	
												<a href="#" onclick="return f_confirm();"><img src="../images/del.gif" width="20"/></a>			
											</td>
										</tr>
										<% 	
											}
										 %>
<!-------------------------------------------------->	
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
