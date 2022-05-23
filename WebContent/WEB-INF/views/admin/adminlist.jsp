<%@page import="spectrum.admin.vo.AdminVO"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	List<AdminVO> adList =
					(List<AdminVO>) request.getAttribute("adList");	

	String msg = request.getParameter("msg") == null
			? "" :request.getParameter("msg");
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/bootstrap.css" rel="stylesheet">
<title>관리자 목록</title>
<style>
.table-div{
    padding: 20%;
    padding-top: 0;
    }
  .table > tbody {
    vertical-align: middle;
}
</style>
</head>
<body>
<div class="table-div">
<table class="table table-hover">
	<tr class="table-active">
		<th scope="col">ID</th>
		<th scope="col">별명</th>
		<th scope="col">전화번호</th>
	
		
	</tr>
	<%
		int adSize = adList.size();
		if(adSize > 0) {
			for(int i=0; i < adSize; i++){
			if(adList.get(i).getAdminWithdrawalyn().equals("N")&& adList.get(i).getAdminWithdrawalyn()!=null){	
		
	%>
	<tr class="table-active">
	<td><a class="nav-link" href="admindetail.do?adminId=<%=adList.get(i).getAdminId()%>"
          onclick="window.open(this.href, '_blank', 'width=1000, height=800, left=450, top=150,toolbars=no,scrollbars=no'); return false;"><%=adList.get(i).getAdminId() %></a></td>
		<%-- <td><a href="admindetail.do?adminId=<%=adList.get(i).getAdminId()%>"><%=adList.get(i).getAdminId() %></a></td> --%>
		<td><%=adList.get(i).getAdminNickname() %></td>
		<td><%=adList.get(i).getAdminPhonenum() %></td>
		
	</tr>
	<%
			}
		}
	}else{
	%>
	<tr>
		<td colspan="4">회원 정보가 없습니다.</td>
	</tr>
	<% 
	}
	%>
</table>
</div>

<%
	if(msg.equals("성공")){
%>
	<script>
		alert("정상적으로 처리되었습니다.");
	</script>
<%		
	}
%>
</body>
</html>