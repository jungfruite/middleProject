<%@page import="spectrum.myspectrum.vo.SpectrumAttachFileVO"%>
<%@page import="java.util.List"%>

<%@page import="spectrum.myspectrum.vo.SpectrumBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
     
   
      SpectrumBoardVO sv = (SpectrumBoardVO) request.getAttribute("sv");
      
      
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet">
</head>
<body>
   <table border="1">

   
    <tr>
       <td>내용</td>
       <td><%=sv.getSpecbrdCn() %></td>
    </tr>
    
     <tr>
       <td>좋아요 수</td>
       <td><%=sv.getSpecbrdLikenum() %></td>
    </tr>
    
    
    <tr>
       <td>작성날짜</td>
       <td><%=sv.getSpecbrdDate()%></td>
    </tr>
    

     <tr>
        <td colspan="2">
           <a href="mySpectrumList.do">[MY SPECTRUM]</a>
           <a href="mySpectrumUpdate.do?boardNum=<%=sv.getSpecbrdSrlnmbr()%>">[게시물 수정]</a>
           <a href="mySpectrumDelete.do?boardNum=<%=sv.getSpecbrdSrlnmbr()%>">[게시물 삭제]</a>
      </td>
     </tr>
     
     <tr>
         <td>
         </td>
       </tr>
   
   </table>
   <div id="report">
   </div>
   
   
   
   
   <script>
   $(document).ready(function(){

	  $.ajax({
	          type : 'get'
	         ,url : "/Spectrum/memberReport.jsp"      //요청
	         ,dataType : 'html'  
	         ,data : {reportId : '<%=sv.getMemberId()%>' ,
	        	 		postNum:'<%=sv.getSpecbrdSrlnmbr()%>' 
	        	 		}  //응답(필수)
	         ,success : function(data){
	        	  $('#report').html(data);
	         }   //응답(필수)
	         ,error : function(xhr){
	        	    alert("상태 >> " + xhr.status);
	         }                  //응답(필수)
	         });
	        });
</script>
   
   
   
</body>
</html>