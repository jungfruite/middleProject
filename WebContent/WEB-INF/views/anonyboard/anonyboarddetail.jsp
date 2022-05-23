<%@page import="spectrum.anonymouseboard.AnonymouseBoardVO"%>
<%@page import="spectrum.member.vo.MemberVO"%>
<%@page import="spectrum.mbtiboard.report.vo.MbtiBoardReportVO"%>
<%@page import="spectrum.mbtiboard.report.service.MbtiBoardReportService"%>
<%@page import="spectrum.mbtiboard.recommend.vo.MbtiBoardRecommendVO"%>
<%@page import="spectrum.mbtiboard.recommend.service.MbtiBoardRecommendService"%>
<%@page import="spectrum.mbtiboard.vo.MbtiBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	AnonymouseBoardVO av = (AnonymouseBoardVO) request.getAttribute("av");
	String content=null;
	if(av.getAnonymouseboardContent()!=null){
		content=av.getAnonymouseboardContent().replace("\r\n","<br>");
	}
	String memId=(String)session.getAttribute("memberId");
	if(memId==null){
		memId="";
	}
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="../jquery-3.6.0.min.js"></script>
</head>
<body>

<div id="header">
	 <%@include file="/navbar.jsp" %>
</div>



<div id="detailPadding"></div>
<div id="mbtiBoardDetail">	

	<table class="table">
		<tr>
			<td>제목:</td>
			<td><%=av.getAnonymouseboardTitle()%></td>
		</tr>
		
		
		<tr>
			<td>게시글 종류:</td>
			<td><%=av.getAnonymouseboardType() %></td>
		</tr>
		
	
		<tr id="boardDetailContent">
			<td >내용:</td>
			<td ><%=content%></td>
		</tr>
	
		
		
		<tr>
			<td colspan="2">
				<a href="anonylist">[목록]</a>
		 		<a href="anonyupdate?postNum=<%=av.getAnonymouseboardPostnum()%>">[게시글 수정]</a>
				<a href="anonydelete?postNum=<%=av.getAnonymouseboardPostnum()%>">[게시글 삭제]</a>
 			</td>
		</tr>
	</table>
</div>
 		
 			
	

	
	
	
	
	
	
</body>
</html>