
<%@page import="spectrum.blacklist.vo.BlacklistVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BlacklistVO bv = (BlacklistVO) request.getAttribute("bv");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<tr>
			<td>블랙리스트 번호:</td>
			<td><%=bv.getBlacklistNumber() %></td>
		</tr>
		<tr>
			<td>아이디:</td>
			<td><%=bv.getMemberId() %></td>
		</tr>
		<tr>
			<td>블랙리스트 유무:</td>
			<td><%=bv.getBlacklistBlackyn() %></td>
		</tr>
		<tr>
			<td>블랙리스트 등록 날짜:</td>
			<td><%=bv.getBlacklistRgstrdate() %></td>
		</tr>
		<tr>
			<td>블랙리스트 풀리는 날짜:</td>
			<td><%=bv.getBlacklistReleasedate() %></td>
		</tr>
		<tr>
			<td>블랙리스트 사유:</td>
			<td><%=bv.getBlacklistReason() %></td>
		</tr>

		<tr>
			<td colspan="2">
				<a href="blacklistlist.do">[이전]</a>
			<%-- 	<a href="update.do?memId=<%=mv.getMemId()%>">[회원정보 수정]</a> --%>
				<a href="blacklistdelete.do?blacklistNumber=<%=bv.getBlacklistNumber()%>">[블랙리스트 풀기]</a> 
			</td>
		</tr>
	</table>
</body>
</html>