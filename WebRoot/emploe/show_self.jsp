<%@ page language="java" import="java.util.*,com.entity.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
	<head>
		<title>Ա����ϸ��Ϣ</title>
		<style type="text/css">		
			.STYLE1 { color: #FFFFFF; font-weight: bold; font-family: "����_GB2312"; }
			.STYLE2 { font-family: "����_GB2312"; font-weight: bold; color:blue; font-size: 25px }		
			.STYLE3 { font-family: "����"; font-size: 16px;color: green}
		</style>
	</head>
	<body bgcolor="#6CA6CD">
		<center>
			<table width="900" border="0" style="border: solid gray 1pt solid;">
				<tr> <td height="76" colspan="2"> <%@ include file="../head.jsp"%> </td> </tr>
				<tr>
					<td height="29" bgcolor="#6C7B8B" align="right" width="58%">
						<span class="STYLE2">��ϸ��Ϣ</span>	
					</td>
					<td height="29" bgcolor="#6C7B8B" align="right">
						<input type="button" value="�鿴������Ϣ" class="STYLE3" onclick="window.location.replace('../EmploeNewTable')"/>
						<span class="STYLE1">��ǰ�û���${sessionScope.emploe.ename }</span>
						<input type="button" name="back" value="�˳���½" onclick="window.location.replace('../index.jsp')">
					</td>	
				</tr>
				<tr>
					<td height="254" align="center" colspan="2"><br><br>
						<table width="70%" height="100%" border="0" style="background-image: url(../images/formbj2.jpg)">
							<tr>
								<td width="20%" align="right">
										Ա����ţ�
								</td>
								<td width="25%" align="center">
									${sessionScope.emploe.eid }
								</td>
								<td width="55%" rowspan="8" align="center" >
									<a href="showImage.jsp">����ͼ��</a><br>
									<img src="${sessionScope.emploe.ephoto }"/>
								</td>
							</tr>
							<tr>
								<td width="20%" align="right">
										������
								</td>
								<td width="25%" align="center">
									${sessionScope.emploe.ename }
								</td>
							</tr>
							<tr height="10%">
								<td width="20%" align="right">
										н�ʴ�����
								</td>
								<td width="25%" align="center">
									${sessionScope.emploe.esalary }
								</td>
							</tr>
							<tr height="10%">
								<td align="right">
									�Ա�				
								</td>
								<td align="center">
								${sessionScope.emploe.esex }
								</td>
							</tr>
							<tr height="10%">
								<td align="right">
									���գ�
								</td>
								<td align="center">
									<c:out value="${sessionScope.emploe.ebir}"></c:out>
								</td>
							</tr>
							<tr height="10%" >
								<td align="right">	
									���												
								</td>
								<td align="center">
										${sessionScope.emploe.emarry }
								</td>
							</tr>
							<tr height="10%">
								<td  align="right">										
										ѧ����											
								</td>
								<td align="center">
									<c:out value="${sessionScope.emploe.eedu}"></c:out>
								</td>
							</tr>
							<tr height="10%" >
								<td align="right">												
										�������ƣ�
								</td>
								<td align="center">
									<c:out value="${sessionScope.deptList.dname}"></c:out>
								</td>
							</tr>
							<tr height="10%" >
								<td align="right">
										ְλ���ƣ�											
								</td>
								<td align="center">
									<c:out value="${sessionScope.postList.pname}"></c:out>
								</td>
							</tr>
							<tr height="10%" >
								<td align="right">
									�绰���룺
								</td>
								<td align="center">
									<c:out value="${sessionScope.emploe.ephone}"></c:out>
								</td>
							</tr>
							<tr height="10%" >
								<td align="right">
									��ͥ��ַ��								
								</td>
								<td align="center" colspan="2">
									<c:out value="${sessionScope.emploe.eaddr}"></c:out>
								</td>
							</tr>
							<tr height="10%" >
								<td></td>
								<td align="right">
									<input type="button" value="��������" onclick="window.location.replace('update_self.jsp')" />
								</td>
								<td align="right">
									<input type="button" value="���ĵ�½����" onclick="window.location.replace('password_update.jsp')" />
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
