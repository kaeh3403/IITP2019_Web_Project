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
���̵� : <input type="text" name="id" /><br>
��й�ȣ : <input type="text" name="pwd" /><br>
�̸� : <input type="text" name="name" /><br>
���� : <input type="text" name="gender" /><br>
�ڵ��� : <input type="text" name="cphone" /><br>
���� : <input type="text" name="birthday" /><br>
�̸��� : <input type="text" name="email" /><br>
<input type="submit" value="����"/>
</form>
</body>
</html>