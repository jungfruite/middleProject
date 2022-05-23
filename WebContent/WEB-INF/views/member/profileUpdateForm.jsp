<%@page import="spectrum.myspectrum.vo.SpectrumAttachFileVO"%>
<%@page import="java.util.List"%>
<%@page import="spectrum.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
       MemberVO mv = (MemberVO) request.getAttribute("mv");
    
     
       String memberId= (String)session.getAttribute("memberId"); 
   /*  List<SpectrumAttachFileVO> atchFileList = (List<SpectrumAttachFileVO>)request.getAttribute("atchFileList"); */
    
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로필 등록 및 업데이트</title>
<link href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet">
<style>
#profileUpdate{
	padding-left: 5%;
	padding-right: 5%;
	padding-top: 5%;
	padding-bottom: 5%;
}
</style>
</head>
<body>
 <form action="profileUpdate.do" method="post" enctype="multipart/form-data"> 
  	<input type="hidden" value="<%=memberId%>" name="memberId">


  <div id="profileUpdate">
    <table border="1" class="table table-hover">
     
     
      <tr>
         <td colspan="2">프로필사진 </td>
     </tr>
      
      <tr>
       <td>닉네임</td>
       <td><%=mv.getMemberNickname() %></td>
      </tr>
      
      <tr>
       <td>MBTI 검사결과</td>
       <td><%=mv.getMbticode() %></td>
      </tr>
   
      <tr>
      <td>상태메세지</td>
       <td><input type="text" name="memberStatusmessage" value="<%=mv.getMemberStatusmessage() %>"></td>
      </tr>
   </table> 
 

    <button type="submit" class="btn btn-secondary">프로필 등록</button>
  
	</div>
   </form>


</body>
</html>