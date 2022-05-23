<%@page import="spectrum.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	MemberVO mv=(MemberVO)session.getAttribute("mv");	

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
.table textarea{
	overflow-y: scroll;
}
</style>
</head>

<body>

<div id="header">
	 <%@include file="/navbar.jsp" %>
</div>



<form action="/Spectrum/anonyboard/anonyboardinsert" method="post">
		<table class="table">
			
			
			<input type="hidden" name ="memberId" value="<%=mv.getMemberId() %>" >
			
			
			<tr>
			<td>제목:</td>
			<td><input type="text" name ="anonyboardTitle" value="" ></td>
			</tr>
			
			
			<tr>
			<td>말머리</td>
			<td><input type="radio" name ="Typecode" value="팁">팁<input type="radio" name ="Typecode" value="잡담">잡담</td>
			</tr>
			<tr>
	
			<tr>
			<td>내용: </td>
			<td><textarea name="anonyboardContent" rows="10" cols="100"></textarea></td>
			</tr>
		
		</table>
		<input type="submit" value="게시글 등록">
	</form>
</body>
</html>