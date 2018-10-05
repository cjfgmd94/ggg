<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<!-- JSTL -->
<c:if test="${param.message == 'error' }">
<script>
alert("아이디 또는 비밀번호가 일치하지 않습니다.");
</script>
</c:if>
<c:if test="${param.message == 'logout' }">
<script>
alert("로그아웃 되었습니다.");
</script>
</c:if>

<script src="../include/jquery-3.3.1.min.js">
$(function(){//로그아웃처리
	$("#btnLogout").click(function(){
		location.href="${path}/session_servlet/logout.do";
		
	});	
});

</script>

</head>
<body>
</body>
</html>