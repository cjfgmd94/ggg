<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>

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
<style type="text/css">

aside#right {
	padding:0px;
	margin-left:10px;
	margin-right:-130px;
	margin-top:-350px;
	width: 10%;
	float: right;
	color:black;
}


</style>


</head>
<body>

<aside id="right">

<form method="post" name="form1" action="${path}/session_servlet/login.do">
<c:if test="${SessionScope.userid == null}">
<h4>LogIn</h4>
${SessionScope.userid}님 환영합니다.
<button type="button" id="btnLogout">로그아웃</button>
<div id="shopcart">
<a target="_blank" href="shopcart.do">
<input type="button" value="쇼핑카트로 보기">
</a>
</div>

</c:if>

<c:if test="${SessionScope.userid != null}">

<a href="register.html" target="_blank" id="register"><input type="button" value="회원가입"></a>
<a href="#" id="forget"><input type="button" value="비밀번호분실"></a>

</c:if>

아이디
<input name="userid" type="text" /><br />
패스워드
<input name="passwd" type="password" /><br />
<input type="submit" value="로그인">

</form>






</aside>

</body>
</html>