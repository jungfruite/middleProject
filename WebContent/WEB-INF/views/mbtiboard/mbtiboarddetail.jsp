<%@page import="spectrum.board.atch.AtchFileVO"%>
<%@page import="java.util.List"%>
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
	MbtiBoardVO mv = (MbtiBoardVO) request.getAttribute("mv");
	String content=null;
	 String reqId= mv.getmemberId();
	if(mv.getmbtiboardContent()!=null){
		content=mv.getmbtiboardContent().replace("\r\n","<br>");
	}
	String memId=(String)session.getAttribute("memberId");
	if(memId==null){
		memId="";
	}
	List<AtchFileVO> atchFileList =(List<AtchFileVO>)request.getAttribute("atchFileList");
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="../jquery-3.6.0.min.js"></script>
<link href="../css/bootstrap.css" rel="stylesheet">
</head>
<body>

<div id="header">
	 <%@include file="/navbar.jsp" %>
</div>
<div>
	


</div>



<div id="detailPadding"></div>
<div id="mbtiBoardDetail">	

	<table class="table">
		<tr>
			<td>제목:</td>
			<td><%=mv.getmbtiboardTitle()%></td>
		</tr>
		
		
		<tr>
			<td>닉네임:</td>
			<td><%=mv.getMemberNickname() %></td>
		</tr>
		
	
		<tr id="boardDetailContent">
			<td >내용:</td>
			<td ><%=content%></td>
		</tr>
		<tr>
			<td>첨부파일</td>
				<td>
					<%
					if(atchFileList !=null){	
						for(AtchFileVO fileVO : atchFileList){
							
						
					%>
						<div><a href="<%=request.getContextPath() %>/mbtiboard/mbtidownload?fileId=<%=fileVO.getBoardAttachmentId()%>&fileSn=<%=fileVO.getBoardatcdtlNum()%> "><%=fileVO.getBoardatcdtlOriginalname() %></a></div>
					<%
						}
					}
					%>
				</td>
			</tr>
			
		
		
		<tr>
			<td colspan="2">
				<a href="mbtiboardlist?mbtiBoard=<%=mv.getmbtiboardClassificationcode() %>">[목록]</a>
		 		<a href="mbtiboardupdate?mbtiboardPostnum=<%=mv.getmbtiboardPostnum()%>">[게시글 수정]</a>
				<a href="mbtiboarddelete?mbtiboardPostnum=<%=mv.getmbtiboardPostnum()%>&mbtiBoard=<%=mv.getmbtiboardClassificationcode()%>">[게시글 삭제]</a>
 			</td>
		</tr>
	</table>
	<div >
			<button type="submit" class="btn btn-primary" name="requestId" id="friend" >CONNECT</button>
	</div>
	
	<!-- 추천 -->
	<div id ="rebutton">
		<%
		
			MbtiBoardRecommendVO mrv = new MbtiBoardRecommendVO();
			mrv.setMbtiboardPostnum(mv.getmbtiboardPostnum());
			mrv.setMemberId(mv.getmemberId());
				
				
		 	String yN=MbtiBoardRecommendService.getInstance().recommendYn(mrv);
		    if(yN==null){
		 %>
				<form action="recommendinsert" method="post">
		<%
		    }else if(yN.equals("Y")){
		%>
				<form action="recommendupdate" method="post">
				<input type="hidden" value="N" name="yN">
		
		<%     	
		    }else if(yN.equals("N")){
		%>
		  		<form action="recommendupdate" method="post">
		  		<input type="hidden" value="Y" name="yN"> 
		<%    
		    }
			
		%>
			<input type="hidden" value="<%=mv.getmbtiboardPostnum()%>" name="mbtiBoardNum">
			<input type="hidden" value="<%=mv.getmemberId()%>" name="memberId">
			<button type="submit" class="btn btn-primary position-relative">
			  추천
			 
			  <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
			    <%=MbtiBoardRecommendService.getInstance().getRecommend(mv.getmbtiboardPostnum())%>
			    
			  <span class="visually-hidden">unread messages</span>
			  </span>
		</form>
	</div>
	
	<!-- 신고 -->

	
	<%
		MbtiBoardReportVO reportVO= new MbtiBoardReportVO();
		reportVO.setMbtiboardPostnum(mv.getmbtiboardPostnum());
		reportVO.setMemberId(mv.getmemberId());
		String reportCheck=MbtiBoardReportService.getInstance().reportCheck(reportVO);
		if(reportCheck==null){
	
	%>
	<div id="report">
	<form action="reportinsert" method="post">
	<input type="hidden" value="<%=mv.getmbtiboardPostnum()%>" name="mbtiBoardNum">
	<input type="hidden" value="<%=mv.getmemberId()%>" name="memberId"> 
	<input type="hidden" value="<%=mv.getmbtiboardClassificationcode()%>" name="mbti"> 
	<textarea rows="2" cols="100" name="textarea"></textarea>
	
	<button type="submit" class="btn btn-primary position-relative">신고</button>
	</form>
	</div>
	
	<%
	}
	%>
	
	

	
<%
if(memId!=""){
	

%>	
	<form action="/Spectrum/mbtiboard/mbtiboardreinsert" method="post">
		<table class="table">
			
			
			<input type="hidden" name ="mbti" value="<%=mv.getmbtiboardClassificationcode()%>" >
			<input type="hidden" name ="mbtiBoardNum" value="<%=mv.getmbtiboardPostnum()%>" >
			<input type="hidden" name ="memberId" value="<%=memId %>">
			
	
			<tr>
			<td>내용: </td>
			<td><textarea name="mbtiboardContent" rows="3" cols="100"></textarea></td>
			</tr>
		</table>
			
	<input type="submit" value="댓글 등록">
	</form>
	
<%
}
%>	

  
	
	
	
	
	<div id="boardre"></div>
	
</div>
	
	
	<script type="text/javascript">
$(document).ready(function(){

  $.ajax({
          type : 'get'
         ,url : "/Spectrum/mbtiboard/mbtiboardrelist"      //요청
         ,dataType : 'html'  
        	 ,data : {mbtiBoardNum : "<%=mv.getmbtiboardPostnum()%>"}//응답(필수)
         ,success : function(data){
           $('#boardre').html(data);
         }   //응답(필수)
         ,error : function(xhr){
            alert("상태 >> " + xhr.status);
         }                  //응답(필수)
         });
        });


</script>	
<script type="text/javascript">

$("#friend").click(function(){

	  $.ajax({
	          type : 'get'
	         ,url : "/Spectrum/friendinsert.jsp"      //요청
	         ,dataType : 'html'  
	         ,data : {requestId : "<%=mv.getmemberId()%>"}  //응답(필수)
	         ,success : function(data){
	          
	         }   //응답(필수)
	         ,error : function(xhr){
	            alert("상태 >> " + xhr.status);
	         }                  //응답(필수)
	         });
	        });
</script>

	
	

	
	
	
	
	
	
</body>
</html>