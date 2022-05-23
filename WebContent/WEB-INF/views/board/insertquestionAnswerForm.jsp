<%@page import="spectrum.board.vo.QuestionBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String boardNo = (String) request.getParameter("questionboardNumber");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>답변 등록</title>
</head>
<body>
	<form action="questionAnswerinsert.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="questionboardNum" value="<%=boardNo%>">
		<input type="hidden" name="adminId" value="<%=session.getAttribute("adminId")%>">

		<table>
			<tr>
				<td>작성자</td>
				<td><%=session.getAttribute("adminId")%></td>
			</tr>
			<tr>
				<td>댓글내용</td>
				<td><input type="text" name="qstn_ansbrdCn"></td>
			</tr>
			
		</table>
		<input type="submit" value="글쓰기">
	</form>
</body>
</html>