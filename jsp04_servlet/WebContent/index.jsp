<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">   
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
   <div class="container" align="center">
      <h3>로그인</h3>
      <form action="login" method="post" clss="form-group">
         <input type="text" name="id" value="root" class="mb-sm-2"><br>
         <input type="password" name="pw" value="12345" class="mb-sm-2"><br>
         <input type="checkbox" name="hobbies" value="cook">요리
         <input type="checkbox" name="hobbies" value="sport">운동
         <input type="checkbox" name="hobbies" value="music">음악
         <input type="checkbox" name="hobbies" value="reading">독서<br>

         <input type="radio" name="majors" value="kor">국어
         <input type="radio" name="majors" value="eng">영어
         <input type="radio" name="majors" value="mat">수학
         <input type="radio" name="majors" value="sci" class="mb-sm-2">과학<br>
         
         <select name="protocol" id="" class="mb-sm-2">
            <option value="http">HTTP</option>
            <option value="ftp" selected>FTP</option>
            <option value="smtp">SMTP</option>
            <option value="pop">POP</option>
         </select><br>
         <input type="submit" class="btn btn-primary" value="로그인">

      </form>
   </div>
</body>
</html>