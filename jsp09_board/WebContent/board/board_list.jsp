<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
 	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
		integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
		crossorigin="anonymous">  
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>글목록보기</title>
</head>
<body> 
<%-- 	${ pageInfo.toString() }<br>
	${ param.p }<br>
	${ param.f }<br>
	${ param.q }<br>
	${ param.fn }<hr> --%>
	<div class="container mt-sm-5" align="center">
	
		<div class="jumbotron">
			<h3>게시글목록보기</h3>
			<c:if test="${ boardList.isEmpty() }">
				<h4><p class="bg-danger text-white">등록된 게시글이 존재하지 않습니다!</p></h4>
			</c:if>
		</div>
	
		<form action="boardList.bo" class="form-line">
			<div class="input-group">
				<select name="f" id="" class="for-control col-sm-2 mr-sm-2">
					<option ${ param.f == "writer" ? "selected" : "" } value="writer">작성자</option>
					<option ${ param.f == "subject" ? "selected" : "" }value="subject">제목</option>
				</select>
				<input type="text" name="q" class="form-control col-sm-8 mr-sm-2" value="${ param.q }" 
					placeholder="검색어를 입력하세요..."/>
				<button type="submit" class="btn btn-primary col-sm-1 mr-sm-2">검색</button>
				<a href="boardWriteForm.bo?p=${param.p}" class="btn btn-success col-sm-1">글쓰기</a>
			</div>
		</form>
		<br class="mt-sm-5" />
		
		<table class="table table-bordered table-striped table-hover">
			<thead class="table-dark" align="center">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일</th>
					<th>파일</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="board" items="${boardList}">
				<tr>
					<td>${board.getBno()}</td>
					<td>
						<c:if test="${ board.getRe_lev() != 0 }">
							┗
							<c:forEach var="i" begin="1" end="${ board.getRe_lev() }">
								━
							</c:forEach>
						</c:if>
						<a href="boardDetail.bo?bno=${board.getBno()}">${board.getSubject()}</a>
						<span class="badge badge-danger ml-sm-3">${board.getReadcount()}</span>
					</td>
					<td>${board.getWriter()}</td>
					<td>${board.getCrtdate()}</td>
					<td align="center">
							<c:if test="${!empty board.getFile()}">
							<a href="download.bo?bno=${board.getBno()}&fn=${board.getFile()}">
								<i class="fas fa-file-download">  ${board.getFile()}</i>
							</a>
						</c:if>
					</td>
					<td align="center">
						<a href="boardDeleteForm.bo?bno=${board.getBno()}">
							<i class="fas fa-trash-alt"></i>
						</a>
					</td>	
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<br />

	 <div class="container" align="center">
      <ul class="pagination justify-content-center">
      
         <c:if test="${ pageInfo.getStartPage() != 1 }">
            <li class="page-item"><a href="boardList.bo?p=1" class="page-link"><i class="fas fa-fast-backward"></i></a></li>
            <li class="page-item"><a href="boardList.bo?p=${ pageInfo.getStartPage() - 10 }" class="page-link"><i class="fas fa-backward"></i></a></li>         
         </c:if>

         <c:forEach var="page_num" begin="${ pageInfo.getStartPage() }" end="${ pageInfo.getEndPage() }">
            <li class="page-item"><a href="boardList.bo?p=${ page_num }" class="page-link">${page_num}</a></li>
         </c:forEach>
         
         <c:if test="${ pageInfo.getEndPage() < pageInfo.getTotalPage() }">
            <li class="page-item"><a href="boardList.bo?p=${ pageInfo.getStartPage() + 10 }" class="page-link"><i class="fas fa-forward"></i></a></li>
            <li class="page-item"><a href="boardList.bo?p=${ pageInfo.getTotalPage() }" class="page-link"><i class="fas fa-fast-forward"></i></a></li>
         </c:if>
      </ul>
   </div>
</body>
</html>














