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
 
        $("#btnAdd").click(function() { //��ư Ŭ���̺�Ʈ
 
            var title = $("#title").val(); //�±��Է°�
            var author = $("#author").val();
            var price = $("#price").val();
            var qty = $("#qty").val();
 
            if (title == "") { //���̸�
 
                alert("�������� �Է��ϼ���")
                $("#title").focus(); //�Է���Ŀ�� �̵�
                return; //�Լ� ����
 
            }
 
            if (author == "") {
 
                alert("���ڸ��� �Է��ϼ���")
                $("#author").focus();
                return;
 
            }
 
            if (price == 0) {
 
                alert("������ �Է��ϼ���")
                $("#price").focus();
                return;
 
            }
 
            if (qty == 0) {
 
                alert("������ �Է��ϼ���")
                $("#qty").focus();
                return;
 
            }
 
            /* ���� �Է��� �����͸� ������ ���� */
            document.form1.submit();
        });
 
    });
</script>
 
</head>
<body>
    <!-- request.getContextPath() = ���ý�Ʈ �佺�� ������ -->
    a
    <!-- ction ="/���ؽ�Ʈ/������丮 / ���� url" -->
    <!-- id �� jsp���� �� ���̰� name�� �������� ����� ���̴�. -->
    <h2>���� ���� ���</h2>
 
    <form name="form1" method="post"
        action="<%=request.getContextPath()%>/book_servlet/insert.dao">
 
        <table border="1">
            <tr>
                <td>������</td>
                <td><input name="title" id="title"></td>
            </tr>
 
            <tr>
                <td>����</td>
                <td><input type="text" name="author" id="author"></td>
            </tr>
 
 
            <tr>
                <td>����</td>
                <td><input type="number" name="price" id="price" required></td>
            </tr>
 
            <tr>
                <td>����</td>
                <td><input type="number" name="qty" id="qty" required></td>
            </tr>
 
 
            <tr>
                <td colspan="2" align="center"><input type="button" id="btnAdd"
                    value="Ȯ��"> <input type="reset" value="���"></td>
            </tr>
 
 
        </table>
 
    </form>
 
</body>
</html>