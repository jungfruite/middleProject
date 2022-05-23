

<%@page import="spectrum.board.vo.QuestionAnswerBoardVO"%>
<%@page import="spectrum.board.vo.QuestionBoardVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	QuestionAnswerBoardVO qabv = (QuestionAnswerBoardVO) request.getAttribute("qabv");
	
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>답변 수정</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/board/questionAnswerupdate.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="questionboardNum" value="<%=qabv.getQuestionboardNum()%>">
		<%=qabv.getQuestionboardNum()%>
		<table>
		
			<tr>
				<td>글내용:</td>
				<td><input type="text" name="qstn_ansbrdCn" value="<%=qabv.getQstn_ansbrdCn()%>"></td>
			</tr>
			
		
		</table>
		<input type="submit" value="답변 수정">
	</form>
</body>
</html>