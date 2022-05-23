<%@page import="spectrum.board.vo.QuestionAnswerBoardVO"%>
<%@page import="spectrum.board.vo.QuestionBoardVO"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	QuestionBoardVO qbv = (QuestionBoardVO) request.getAttribute("qbv");
//	if(qbv.getQuestionboardAnsweryn().equals("Y")){
		
//	}
//	QuestionAnswerBoardVO qabv = (QuestionAnswerBoardVO) request.getAttribute("qabv");
// 	if(qbv.getQuestionboardAnsweryn().equals("Y")){	
// 	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../jquery-3.6.0.min.js"></script>
<link href="../css/bootstrap.css" rel="stylesheet">
<title>Insert title here</title>
<style>
#rebutton{
 width: 100px;
 height: 100px;

}
#report{

 width: 600px;
 height: 100px;

}
.table textarea{
	overflow-y: scroll;
}
#mbtiBoardDetail{
	padding-left: 10%;
	padding-right: 10%;

}
#boardDetailContent{
	height: 150px;
}
#detailPadding{

padding-top:5%;

}

</style>
</head>
<body>
	<table border="1">
		<tr>
			<td>글번호:</td>
			<td><%=qbv.getQuestionboardNumber() %></td>
		</tr>
		<tr>
			<td>글 제목:</td>
			<td><%=qbv.getQuestionboardTitle() %></td>
		</tr>
		<tr>
			<td>작성날짜:</td>
			<td><%=qbv.getQuestionboardDate() %></td>
		</tr>
		<tr>
			<td>작성자:</td>
			<td><%=qbv.getMemberId() %></td>
		</tr>
		<tr>
			<td>글내용:</td>
			<td><%=qbv.getQuestionboardContent() %></td>
		</tr>
	
		<tr>
<%		
		
		if(qbv.getQuestionboardAnsweryn().equals("Y")){
			QuestionAnswerBoardVO qabv = (QuestionAnswerBoardVO) request.getAttribute("qabv");
			
%>		
		 <tr>
			<td>댓글번호</td>
			<td>1</td>
		</tr>
		<tr> 
			<td>작성자</td>
			<td><%=qabv.getAdminId() %></td>
		</tr>
		<tr> 
			<td>댓글내용</td>
			<td><%=qabv.getQstn_ansbrdCn() %></td>
		</tr>
<%
		}
 %>		
			<td colspan="2">
				<a href="questionlist.do">[목록]</a>
				<%
				if(session.getAttribute("memberId") !=null){
					
				
				%>
				<a href="questionupdate.do?questionboardNumber=<%=qbv.getQuestionboardNumber()%>">[게시글 수정]</a>
				<a href="questiondelete.do?questionboardNumber=<%=qbv.getQuestionboardNumber()%>">[게시글 삭제]</a>
				<%
				
				}
				%>
<% 		
		
		if(qbv.getQuestionboardAnsweryn().equals("Y")&&session.getAttribute("adminId")!=null){
%>
			<a href="questionAnswerupdate.do?questionboardNumber=<%=qbv.getQuestionboardNumber()%>">[댓글수정]</a>
				<a href="questionAnswerdelete.do?questionboardNumber=<%=qbv.getQuestionboardNumber()%>">[댓글 삭제]</a> -
<%
		}
%>				
<% 
		if(qbv.getQuestionboardAnsweryn().equals("N")&&session.getAttribute("adminId")!=null){
%>				
			<a href="questionAnswerinsert.do?questionboardNumber=<%=qbv.getQuestionboardNumber()%>">[댓글쓰기]</a>
<%
		}
%>				
			</td>
		</tr>
	</table>
</body>
</html>