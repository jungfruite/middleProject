<%@page import="spectrum.blacklist.vo.BlacklistVO"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	List<BlacklistVO> blackList =
					(List<BlacklistVO>) request.getAttribute("blackList");	

	String msg = request.getParameter("msg") == null
			? "" :request.getParameter("msg");
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>블랙리스트 목록</title>
</head>
<body>
<table border="1">
	<tr>
		<th>블랙리스트 번호</th>
		<th>아이디</th>
		
	</tr>
	<%
		int blackSize = blackList.size();
		if(blackSize > 0) {
			for(int i=0; i < blackSize; i++){
			if(blackList.get(i).getBlacklistBlackyn().equals("Y")){
				
		
	%>
	<tr>
		<td><%=blackList.get(i).getBlacklistNumber() %></td>
		<td><a href="blacklistdetail.do?blacklistNumber=<%=blackList.get(i).getBlacklistNumber()%>"><%=blackList.get(i).getMemberId() %></a></td>
	
	</tr>
	<%
			}
			}
	}else{
	%>
	<tr>
		<td colspan="4">회원 정보가 없습니다.</td>
	</tr>
	<% 
	}
	%>
</table>

<%
	if(msg.equals("성공")){
%>
	<script>
		alert("정상적으로 처리되었습니다.");
	</script>
<%		
	}
%>
	<a href="blacklistinsert.do">[블랙리스트 추가]</a>
	 
</body>
</html>