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
	<div class="container">
		<table class ="table table-dark table-hover" border="1">
		<tr>
		<td colspan="2"><jsp:include page="/jsp06_action/layout/top.jsp" flush="false"/></td>
		</tr>
		<tr height ="80%">
		<td width="25%"><jsp:include page="/jsp06_action/layout/left.jsp" flush="false"/></td>
		<td width="75%"><h4>본문글</h4></td>
		</tr>
		<tr>
		<td colspan="2"><jsp:include page="/jsp06_action/layout/bottom.jsp" flush="false"/></td>
		</tr>
		</table>
	</div>
</body>
</html>