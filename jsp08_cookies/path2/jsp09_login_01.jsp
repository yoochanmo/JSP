<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">   
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
      integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
      crossorigin="anonymous">      
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
   <title>Insert title here</title>
</head>
<body>
   <div class="container" align="center">
      <h3>로그인폼</h3>
      <hr />
      
      <form action="<%= request.getContextPath() %>/jsp08_cookies/jsp09_login_02.jsp" class="form-line">
         <div class="input-group mb-2 mr-sm-2">
            <div class="input-group-prepend">
               <span class="input-group-text"><i class="fas fa-user"></i></span>
            </div>
            <input type="text" name="id" class="form-control"/>
         </div>
         <div class="input-group mb-2 mr-sm-2">
            <div class="input-group-prepend">
               <span class="input-group-text"><i class="fas fa-lock"></i></span>
            </div>
            <input type="password" name="pw" class="form-control"/>
         </div>
         <input type="submit" class="btn btn-primary mb-2 mr-2" value="Log In" />
         <a href="./jsp09_logout.jsp" class="btn btn-primary mb-2">Log Out</a>
      </form>
   </div>
</body>
</html>