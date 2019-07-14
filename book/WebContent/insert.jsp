<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 
<script src="http://code.jquery.com/jquery-3.1.0.js">
    
</script>
 
<script>
    $(document).ready(function() {
 
        $("#btnAdd").click(function() { //버튼 클릭이벤트
 
            var title = $("#title").val(); //태그입력값
            var author = $("#author").val();
            var price = $("#price").val();
            var qty = $("#qty").val();
 
            if (title == "") { //빈값이면
 
                alert("도서명을 입력하세요")
                $("#title").focus(); //입력포커스 이동
                return; //함수 종료
 
            }
 
            if (author == "") {
 
                alert("저자명을 입력하세요")
                $("#author").focus();
                return;
 
            }
 
            if (price == 0) {
 
                alert("가격을 입력하세요")
                $("#price").focus();
                return;
 
            }
 
            if (qty == 0) {
 
                alert("수량을 입력하세요")
                $("#qty").focus();
                return;
 
            }
 
            /* 폼에 입력한 데이터를 서버로 전송 */
            document.form1.submit();
        });
 
    });
</script>
 
</head>
<body>
    <!-- request.getContextPath() = 컨택스트 페스를 리턴함 -->
    a
    <!-- ction ="/컨텍스트/가상디렉토리 / 서블릿 url" -->
    <!-- id 는 jsp에서 쓸 것이고 name은 서블릿에서 사용할 것이다. -->
    <h2>도서 정보 등록</h2>
 
    <form name="form1" method="post"
        action="<%=request.getContextPath()%>/book_servlet/insert.dao">
 
        <table border="1">
            <tr>
                <td>도서명</td>
                <td><input name="title" id="title"></td>
            </tr>
 
            <tr>
                <td>저자</td>
                <td><input type="text" name="author" id="author"></td>
            </tr>
 
 
            <tr>
                <td>가격</td>
                <td><input type="number" name="price" id="price" required></td>
            </tr>
 
            <tr>
                <td>수량</td>
                <td><input type="number" name="qty" id="qty" required></td>
            </tr>
 
 
            <tr>
                <td colspan="2" align="center"><input type="button" id="btnAdd"
                    value="확인"> <input type="reset" value="취소"></td>
            </tr>
 
 
        </table>
 
    </form>
 
</body>
</html>