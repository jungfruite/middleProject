<%@page import="spectrum.member.vo.MemberVO"%>
<%@page import="spectrum.myspectrum.vo.mySpectrumListVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   List<mySpectrumListVO> memList = (List<mySpectrumListVO>)  request.getAttribute("memList");
   String msg = request.getParameter("msg")==null?"":request.getParameter("msg");
   String memId= (String)session.getAttribute("memberId");


%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>타회원 게시물 목록</title>
<style>
img{
 width:50px;
 height:50px;
}
</style>
</head>
<body>

   <div >
			<button type="submit" class="btn btn-primary" name="requestId" id="friend" >CONNECT</button>
	</div>
  
      <%
       int memSize = memList.size();
       if(memSize > 0){
         for(int i=0; i<memSize; i++){ 
           
             if(memList.get(i).getMemberId().equals(memId)){
      %>

  <table border="1">
   
      <tr>
         <td colspan="2">프로필사진 </td>
     </tr>

      <tr>
       <td><%=memList.get(i).getMemberNickname() %></td>
       <td><%=memList.get(i).getMbticode() %></td>
      </tr>
   
      <tr>
       <td colspan="2"><%=memList.get(i).getMemberStatusmessage() %></td>
      </tr>
   </table> 

   <table border="1">
   
      
       
       <%   
          }
         }
       }else{
          %>
          
            <div>
            <img src="<%=request.getContextPath() %>/imeges/기본프로필.jpg">
           </div>
         
             <tr>
                <td colspan="3">등록된 프로필이 없습니다.</td><p>
             </tr>
        
             <%
             }
             %>
          </table>

          <%
            if(msg.equals("성공")){
          %>
          <script>
             alert('정상적으로 처리되었습니다.');
          </script>
          <%
            }
          %>
    
    
     
      <%
      memSize = memList.size();
      if(memSize > 0){
         for(int i=0; i<memSize; i++){
            if(memList.get(i).getMemberId().equals(memId)){
      %>
     
  <table border="1">
   
      <tr>
       <td><a href="mySpectrumDetail.do?memId=<%=memList.get(i).getMemberId()%>"><%= memList.get(i).getSpctatcId() %> </a></td>
      </tr>
      
     
     
      <%
         }
         }
      }else{
      %>
      <tr>
         <td colspan="3">등록된 게시물이 없습니다.</td><p>
      </tr>
   
      
      <%
      }
      %>
   </table>

   <%
     if(msg.equals("성공")){
   %>
   <script>
      alert('정상적으로 처리되었습니다.');
   </script>
   <%
     }
   
   %>
   
   <script type="text/javascript">

$("#friend").click(function(){

	  $.ajax({
	          type : 'get'
	         ,url : "/Spectrum/friendinsert.jsp"      //요청
	         ,dataType : 'html'  
	         ,data : {requestId : "<%=memList.get(0).getMemberId()%>"}  //응답(필수)
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