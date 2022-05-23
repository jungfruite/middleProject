
<%@page import="spectrum.board.vo.NoticeBoardVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	NoticeBoardVO bv = (NoticeBoardVO) request.getAttribute("bv");

	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/board/update.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="noticeboardNum" value="<%=bv.getNoticeboardNum()%>">
		
		<table>
			<tr>
				<td>글번호:</td>
				<td><%=bv.getNoticeboardNum()%></td>
			</tr>
			<tr>
				<td>작성자:</td>
				<td><%=bv.getAdminId()%></td>
			</tr>
			<tr>
				<td>말머리:</td>
				<td><input type="text" name="noticeboardType" value="<%=bv.getNoticeboardType()%>"></td>
			</tr>
			<tr>
				<td>글제목:</td>
				<td><input type="text" name="noticeboardTitle" value="<%=bv.getNoticeboardTitle()%>"></td>
			</tr>
			<tr>
				<td>글내용:</td>
				<td><input type="text" name="noticeboardContent" value="<%=bv.getNoticeboardContent()%>"></td>
			</tr>
			
		
		</table>
		<input type="submit" value="게시글 수정">
	</form>
</body>
</html>