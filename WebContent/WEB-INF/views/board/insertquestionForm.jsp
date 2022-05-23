<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>질문사항 등록</title>
</head>
<body>
	<form action="questioninsert.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="memberId" value="<%=session.getAttribute("memberId")%>">
		<table>
			
			
			<tr>
				<td>글 제목:</td>
				<td><input type="text" name="questionboardTitle" value=""></td>
			</tr>
			
			<tr>
				<td>글내용</td>
				<td><input type="text" name="questionboardContent"></td>
			</tr>
			
		</table>
		<input type="submit" value="글쓰기">
		
	</form>
</body>
</html>