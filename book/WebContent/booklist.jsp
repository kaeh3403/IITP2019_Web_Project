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
 
<h2> 도서목록</h2>
 
<input type="button" value="도서등록"
    onclick="location.href='insert.jsp' "
>
 
 
<table border="1"> 
 
    <tr>
                <th>번호</th>    
                <th>도서명</th>
                <th>저자</th>
                <th>가격</th>
                <th>수량</th>
    
    </tr>
 
 
<%
        BookDAO dao=new BookDAO();
        //dao.dbConn();   db 연결 확인 작업
        
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
 
         } //for 문의 끝
%>
 </table>
 
</body>
</html>