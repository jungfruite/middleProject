<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>블랙리스트 등록</title>
</head>
<body>
	<form action="blacklistinsert.do" method="post">
		
		<table>
	
			<tr>
				<td>블랙리스트 추가할 아이디:</td>
				<td><input type="text" name="memberId" value=""></td>
				
			</tr>
			<tr>
				<td>사유:</td>
				<td><textarea name="blacklistReason" rows="3" cols="20"></textarea></td>
			</tr>
				
		</table>
		<input type="submit" value="블랙리스트 등록">
	</form>
</body>
</html>