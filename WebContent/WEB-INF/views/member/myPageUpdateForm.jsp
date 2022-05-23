<%@page import="spectrum.myspectrum.vo.SpectrumAttachFileVO"%>
<%@page import="java.util.List"%>
<%@page import="spectrum.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
       MemberVO mv = (MemberVO) request.getAttribute("mv");
      
   /*  List<SpectrumAttachFileVO> atchFileList = (List<SpectrumAttachFileVO>)request.getAttribute("atchFileList"); */
    
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 변경</title>
<link href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet">
<style>
#mySpectrumUpdate{
	padding-left: 5%;
	padding-right: 5%;
	padding-top: 5%;
	padding-bottom: 5%;
}
</style>
</head>
<body>

  <!-- <form action="/ServletExam2/member/update.do" method="post"> -->
  <form action="<%=request.getContextPath() %>/myPageUpdate.do" method="post" >
  <input type="hidden" name="memberId" value="<%=mv.getMemberId()%>">
  <%-- <input type="hidden" name="atchFileId" value="<%=mv.getAtchFileId() %>"> --%>
  <div id="mySpectrumUpdate">
    <table border="1" class="table table-hover">
      <tr>
       <td scope="row">아이디</td>
       <td><%=mv.getMemberId() %></td>
      </tr>
      
       <tr>
       <td scope="row">비밀번호</td>
       <td><input type="text" name="memberPassword" id="pass1" value="<%=mv.getMemberPassword() %>"></td>
      </tr>
      
      <tr>
       <td scope="row">비밀번호 재확인</td>
       <td><input type="text" name="memberPassword" id="pass2" value="<%=mv.getMemberPassword() %>"></td>
      </tr>
      
       <tr>
       <td scope="row">이름</td>
       <td><input type="text" name="memberName" value="<%=mv.getMemberName() %>"></td>
      </tr>
      
       <tr>
       <td scope="row">휴대폰 번호</td>
       <td><input type="text" name="memberPhonenum" value="<%=mv.getMemberPhonenum()%>"></td>
      </tr>
      
       <tr>
       <td scope="row">생년월일</td>
       <td><input type="text" name="memberBirth" value="<%=mv.getMemberBirth()%>"></td>
      </tr>
    
       <tr>
       <td scope="row">주소</td>
       <td><input type="text" name="memberAddr1" value="<%=mv.getMemberAddr1()%>"></td>
      </tr>
      
       <tr>
       <td scope="row">상세 주소</td>
       <td><input type="text" name="memberAddr2" value="<%=mv.getMemberAddr2() %>"></td>
      </tr>
      
        <tr>
       <td scope="row">닉네임</td>
       <td><input type="text" name="memberNickname" value="<%=mv.getMemberNickname() %>"></td>
      </tr>
      
        <tr>
       <td scope="row">이메일</td>
       <td><input type="text" name="memberMail" value="<%=mv.getMemberMail() %>"></td>
      </tr>
      
	</table>
    
    
   <fieldset>
    <label for="gd">MY SPECTRUM 공개범위 설정</label><p>
    <input type="radio" name="gender" value="MY FRIENDS">ONLY MY FRIENDS
    <input type="radio" name="gender" value="전체공개" checked> 전체공개 <br>
   </fieldset>
    
    <button type="submit" class="btn btn-secondary">회원정보 수정 완료</button>
  
	</div>
   </form>

    <script>
    function test() {
        var p1 = document.getElementById('pass1').value;
        var p2 = document.getElementById('pass2').value;
        if( p1 != p2 ) {
          alert("비밀번호가 일치 하지 않습니다");
          return false;
        } else{
          alert("비밀번호가 일치합니다");
          return true;
        }

      }
    </script>

</body>
</html>