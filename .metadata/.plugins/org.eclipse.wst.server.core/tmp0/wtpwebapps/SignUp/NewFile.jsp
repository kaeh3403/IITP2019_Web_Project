<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action = "MemberServlet" method = "post">
아이디 : <input type="text" name="id" /><br>
비밀번호 : <input type="text" name="pwd" /><br>
이름 : <input type="text" name="name" /><br>
성별 : <input type="text" name="gender" /><br>
핸드폰 : <input type="text" name="cphone" /><br>
생일 : <input type="text" name="birthday" /><br>
이메일 : <input type="text" name="email" /><br>
<input type="submit" value="가입"/>
</form>
</body>
</html>