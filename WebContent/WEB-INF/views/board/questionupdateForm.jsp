

<%@page import="spectrum.board.vo.QuestionBoardVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	QuestionBoardVO qbv = (QuestionBoardVO) request.getAttribute("qbv");
	
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/board/questionupdate.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="questionboardNumber" value="<%=qbv.getQuestionboardNumber()%>">
		
		<table>
			<tr>
				<td>글번호:</td>
				<td><%=qbv.getQuestionboardNumber()%></td>
			</tr>
			<tr>
				<td>작성자:</td>
				<td><%=qbv.getMemberId()%></td>
			</tr>
			<tr>
				<td>글제목:</td>
				<td><input type="text" name="questionboardTitle" value="<%=qbv.getQuestionboardTitle()%>"></td>
			</tr>
			<tr>
				<td>글내용:</td>
				<td><input type="text" name="questionboardContent" value="<%=qbv.getQuestionboardContent()%>"></td>
			</tr>
			
		
		</table>
		<input type="submit" value="게시글 수정">
	</form>
</body>
</html>