<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<style type="text/css">

#header {
height:60px;
margin:auto;
color:#8080ff;
font-weight:bold;
font-size:20px;
}

ul#header2 {
	list-style: none;
	text-align: center;
	border-top: 1px solid red;
	border-bottom: 1px solid red;
	padding: 10px 0;
}
ul#header2 li {
	display: inline;
	text-transform:uppercase;
	padding: 0 10px;
	letter-spacing:10px;
	}

ul#header2 li a {
	text-decoration: none;
	color: #8080ff;
}
ul#header2 li a:HOVER {
	text-decoration: underline;
}

</style>
</head>
<body>

<div id="head">

<div id="header">
<a href="${path}/board_servlet/list.do" align="center"><h3>PULL UP</h3></a>
</div>


<ul id="header2">
<li><a href="${path}/board_servlet/list.do">HOME</a></li>
<li><a href="${path}/board_servlet/shoping.do">SHOPING</a></li>
<li><a href="${path}/board_servlet/list2.do">BOARD</a></li>
<li><a href="${path}/memo_servlet/list.do">CONTECT</a></li>
</ul>


</div>

</body>
</html>