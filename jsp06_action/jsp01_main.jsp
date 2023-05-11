<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
  </head>
<title>Insert title here</title>
</head>
<body>
	<!-- jsp01_menu.jsp, jsp01_fotter.jsp, jsp01_sub.jsp  -->
	<%@include file="jsp01_menu.jsp" %>
	
	<div class="container">
		<h1>jsp01_main.jsp</h1>
		<%-- <%@include file="jsp01_sub.jsp" %> --%>
		<jsp:include page="jsp01_sub.jsp" flush="false"/>
		<h1>include이후의 내용...</h1>
	</div>
	<%@include file="jsp01_footer.jsp" %>
</body>
</html>