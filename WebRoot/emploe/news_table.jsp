<%@ page language="java" import="java.util.*,com.entity.*"
	pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>��Ϣ���Թ���</title>
		<style type="text/css">
			.STYLE1 { color: #FFFFFF; font-weight: bold; font-family: "����_GB2312"; font-size: 12pt; }
			.STYLE2 { font-family: "����_GB2312"; font-weight: bold; font-size: 12pt; height: 28pt; }			
		</style>
	</head>

	<body bgcolor="#6CA6CD">
		<center>
			<table width="900" style="border: solid gray 1pt solid;">
				<tr> <td height="76" colspan="2"> <%@ include file="../head.jsp"%> </td> </tr>
				<tr>
					<td height="29" bgcolor="#6C7B8B">
						<span class="STYLE1">��ǰλ�ã�<a href="show_self.jsp" class="STYLE1">������Ϣ</a> &gt;&gt; ������Ϣ��</span>	
					</td>
					<td height="29" bgcolor="#6C7B8B" align="right">
						<span class="STYLE1">��ǰ�û���${sessionScope.emploe.ename }</span>
						<input type="button" name="back" value="�˳���½" onclick="window.location.replace('../index.jsp')">
					</td>	
				</tr>
				<tr>
					<td height="254" colspan="2">
						<table width="100%" border="0">
							<tr align="center">
								<td width="58%" height="36" class="STYLE4" align="left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      		                                                                 ��${sessionScope.pageNow }ҳ; ��${sessionScope.lineCount }����Ϣ
      		                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      		                        <input type="button"  value="������Ϣ" onclick="window.location.replace('news_add.jsp')" style="color:green;font-size: 15px">
								</td>
								<td width="5%">
									<input type="button" value="��ҳ" onclick="window.location.replace('../NewsTable?n=1')">
								</td>
								<td width="5%">
									<input type="button" value="��һҳ" onclick="window.location.replace('../NewsTable?n=${sessionScope.pageNow-1}')">
								</td>
								<td width="5%">
									<input type="button" value="��һҳ" onclick="window.location.replace('../NewsTable?n=${sessionScope.pageNow+1}')">
								</td>
								<td width="5%">
									<input type="button" value="βҳ" onclick="window.location.replace('../NewsTable?n=${sessionScope.pageCount}')">
								</td>
							</tr>
							<tr valign="middle" align="center">
								<td colspan="5">
									<table width="80%" border="3" bordercolor="#6C7B8B" style="border-collapse: collapse; border-spacing: 0;">
										<tr>
											<th width="10%" class="STYLE2">
												��Ϣ���
											</th>
											<th width="20%" class="STYLE2">
												��Ϣ����
											</th>
											<th width="20%" class="STYLE2">
												��Ϣʱ��
											</th>
											<th width="20%" class="STYLE2">
												������
											</th>
											<th width="10%" class="STYLE2" colspan="2">
												����
											</th>	
										</tr>
<!-- ѭ��������ݿ������� ------------------------------------------------------->	
									<c:forEach var="msg" items="${sessionScope.msglist}" >					
										<tr align="center">
											<td>
												<c:out value="${msg.mid}"></c:out>
											</td>
											<td>
												<c:out value="${msg.mcontent}"></c:out>
											</td>
											<td >
												<c:out value="${msg.mtime}"></c:out>
											</td>
											<td >
												<c:out value="${msg.muser}"></c:out>
											</td>
											<td width="7%" colspan="2" class="STYLE3">
												<a href="../EmploeNewsDetail?muser=${msg.muser }"><img src="../images/detail.gif" /></a>
											</td>
										</tr>
									</c:forEach>		
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
