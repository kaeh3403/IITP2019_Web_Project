<%@page import="book.bookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="book.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<h2> �������</h2>
 
<input type="button" value="�������"
    onclick="location.href='insert.jsp' "
>
 
 
<table border="1"> 
 
    <tr>
                <th>��ȣ</th>    
                <th>������</th>
                <th>����</th>
                <th>����</th>
                <th>����</th>
    
    </tr>
 
 
<%
        BookDAO dao=new BookDAO();
        //dao.dbConn();   db ���� Ȯ�� �۾�
        
         ArrayList<bookDTO>list=dao.bookList();
         for(bookDTO dto:list){
                     
%>
 
        <tr>
                <td><%=dto.getId() %></td>
                <td><%=dto.getTitle() %></td>
                <td><%=dto.getAuthor() %></td>
                <td><%=dto.getPrice() %></td>
                <td><%=dto.getQty() %></td>
        
        </tr>
 
 
 
<%
 
         } //for ���� ��
%>
 </table>
 
</body>
</html>