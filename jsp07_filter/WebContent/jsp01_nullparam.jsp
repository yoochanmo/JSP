<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
      <h3>Filter - Null Parameter Test</h3>
      <table class="table table-dark text-light">
         <tr>
            <td width="20%">아이디</td>
            <td><%= request.getParameter("id") %></td>
         </tr>
         <tr>
            <td align="left">이름</td>
            <td><%= request.getParameter("name") %></td>
         </tr>
         <tr>
            <td align="left">회원</td>
            <td><%= request.getParameter("member") %></td>
         </tr>
      </table>
   </div>
</body>
</html>