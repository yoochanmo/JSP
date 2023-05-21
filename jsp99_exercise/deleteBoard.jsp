<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8"); 
Class.forName("org.mariadb.jdbc.Driver");
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;	

String url = "jdbc:mariadb://localhost:3306/jspstudy";
String usr = "root";
String pwd = "12345";

try {
    conn = DriverManager.getConnection(url, usr, pwd);
    stmt = conn.createStatement();
    
    if (request.getParameter("submit") != null) {
        int bno = Integer.parseInt(request.getParameter("bno"));

        String sql = "DELETE FROM board WHERE bno=" + bno;
        stmt.executeUpdate(sql);
        
        out.println("<script>alert('삭제되었습니다.');</script>");
    }
} catch (Exception e) {
    e.printStackTrace();
} finally {
    if (rs != null) {
        rs.close();
    }
    if (stmt != null) {
        stmt.close();
    }
    if (conn != null) {
        conn.close();
    }
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <div class="container" align="center">
        <h1>게시판 삭제</h1>
        
        <form action="" method="post">
            <table class="table table-bordered table-dark table-hover">
                <tr>
                    <td width="20%">bno</td>
                    <td><input type="text" name="bno" class="form-control" size="30" disabled value="<%=request.getParameter("bno")%>"></td>
                </tr>	
            </table>
            <input type="submit" class="btn btn-info mt-sm-2" name="submit" value="게시판 삭제"/>
            <input type="reset" class="btn btn-info mt-sm-2" />
            <a href="listBoard.jsp" class="btn btn-primary mt-sm-2">회원목록</a>
        </form>
    </div>
</body>
</html>
