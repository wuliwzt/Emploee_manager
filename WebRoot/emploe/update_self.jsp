<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>������Ϣ</title>
		<style type="text/css">
			.STYLE1 { color: #FFFFFF; font-weight: bold; font-family: "����_GB2312"; }
			.STYLE2 { font-family: "����_GB2312"; font-weight: bold; font-size: 20px}
    	</style>
    	<script type="text/javascript" src = "../js/showdate.js"></script>
		<script language="javascript" src="../js/validate.js"></script>
	</head>

	<body bgcolor="#6CA6CD">
		<center>
			<table width="900" border="0" style="border: solid gray 1pt solid;">
				<tr> <td height="76" colspan="2"> <%@ include file="../head.jsp"%> </td> </tr>
				<tr>
					<td height="29" bgcolor="#6C7B8B">
						<span class="STYLE1">��ǰλ�ã�<a href="show_self.jsp" class="STYLE1">������Ϣ</a> &gt;&gt; ������Ϣ</span>	
					</td>
					<td height="29" bgcolor="#6C7B8B" align="right">
						<span class="STYLE1">��ǰ�û���${sessionScope.emploe.ename }</span>
						<input type="button" name="back" value="�˳���½" onclick="window.location.replace('../index.jsp')">
					</td>	
				</tr>
				<tr>
					<td height="254" colspan="2" align="center">
						<form action="../EmploeUpdateSelf" onSubmit="return emploe_validate()">
							<table width="60%" border="0" style="background-image: url(../images/formbj3.jpg)">
								<tr>
									<td class="STYLE2" colspan="2">
										�Լ�������Ϣ��
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										Ա����ţ�
									</td>
									<td width="65%" align="left">
										<input name="eid" type="text" readonly="readonly" value="${sessionScope.emploe.eid }" />
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										������
									</td>
									<td width="65%" align="left">
										<input name="ename" type="text" value="${sessionScope.emploe.ename}" />
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										нˮ��
									</td>
									<td width="65%" align="left">
										<input name="esalary" type="text" value="0.0"  readonly="readonly"/>
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										�Ա�
									</td>
									<td width="65%" align="left">
										<img src="../images/nan.png" height=20 width=20/>��
										<input type="radio" name="esex" value="��" >
										<img src="../images/nv.png" height=20 width=20/>Ů
										<input type="radio" name="esex" value="Ů">
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										���գ�
									</td>
									<td width="65%" align="left">
										<input name="ebir" type="text" value="" id="time" onclick="return Calendar('time')" />
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										���
									</td>
									<td width="65%" align="left">
										<img src="../images/yes.png" height=20 width=20/>�ѻ�
										<input type="radio" name="emarry" value="�ѻ�" >
										<img src="../images/no.png" height=20 width=20/>δ��
										<input type="radio" name="emarry" value="δ��">
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										ѧ����
									</td>
									<td width="65%" align="left">
										<select name="eedu"  style="width: 156px" >
											<option value="" selected="selected"> -- ��ѡ�� -- </option>
											<option value="��" > -- �� -- </option>
											<option value="Сѧ" > -- Сѧ -- </option>
											<option value="����" > -- ���� -- </option>
											<option value="����" > -- ���� -- </option>
											<option value="ר��" > -- ר�� -- </option>
											<option value="����" > -- ���� -- </option>
											<option value="�о���" > -- �о��� -- </option>
											<option value="��ʿ��" > -- ��ʿ�� -- </option>
											<option value="��ʿ��" > -- ��ʿ�� -- </option>
										</select>
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										���ţ�
									</td>
									<td width="65%" align="left">
										<select name="did" style="width: 156px" >
											<option value="" selected="selected"> -- ��ѡ�� -- </option>
											<c:forEach var="dept" items="${sessionScope.deptList}">
											<option value="<c:out value='${dept.did}'/>" ><c:out value="${dept.dname}"/></option>		
											</c:forEach>
										</select>
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										ְλ��
									</td>
									<td width="65%" align="left">
										<select name="pid"  style="width: 156px" >
											<option value="" selected="selected"> -- ��ѡ�� -- </option>
											<c:forEach var="post" items="${sessionScope.postList}">
											<option value="<c:out value='${post.pid}'/>" ><c:out value="${post.pname}"/></option>		
											</c:forEach>
										</select>
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										�绰��
									</td>
									<td width="65%" align="left">
										<input name="ephone" type="text" value="" />
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										��ַ��
									</td>
									<td width="65%" align="left">
										<input name="eaddr" type="text" value="" />
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										�һ��������⣺
									</td>
									<td width="65%" align="left">
										<input name="equestion" type="text" value="${sessionScope.emploe.equestion}" />
									</td>
								</tr>
								<tr>
									<td width="35%" align="right">
										����𰸣�
									</td>
									<td width="65%" align="left">
										<input name="eanswer" type="text" value="${sessionScope.emploe.eanswer }" />
									</td>
								</tr>							
								<tr>	
									<td width="35%" align="right"> </td>
									<td width="65%" align="left">
										<input type="submit" value="�����Լ���Ϣ" />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="button" value="ע���˻�" style="color: red;font-size: 10px" onclick="windows.location.replace('../EmploeLog_off?eid=${sessionScope.emploe.eid }')"/>
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
