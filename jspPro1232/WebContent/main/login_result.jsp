<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=request.getAttribute("result") %>
<h2>${sessionScope.message}</h2>
${sessionScope.userid}님이 접속중입니다.<br>
</body>
</html>