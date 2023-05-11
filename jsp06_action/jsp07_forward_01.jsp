<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">   
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- jsp07_forward_02.jsp -->
	<form action="jsp07_forward_02.jsp">
		이동할 페이지 :
		<select name="code" id="" class = "form_select" aria-label="page forward....">
			<option selected>Open this select menu</option>
			<option value="1">1st</option>
			<option value="2">2nd</option>
			<option value="3">3rd</option>
		</select>
		<br />
		<input type="submit" class = "btn btn-info" value= "페이지 forward" />
	</form>
</body>
</html>