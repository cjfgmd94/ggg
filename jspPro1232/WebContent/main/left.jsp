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
#left2{
height:20%;
}
aside#left {
	width: 20%;
	margin:auto;
	float: left;
	margin-left: -3%;
}

#left ul {
	font-family: Arial,Helvetica,sans-serif;
	font-size: 20px;
	color:#FFF;
	list-style: none;
	text-indent: 15px;
}
#left ul li {
	background: #3f3f3f;
	line-height: 28px;
	border-bottom: 1px solid #333;
}
#left ul li a {
	text-decoration:none;
	color: #FFF;
	display: block;
}
#left ul li a:HOVER {
	background:#d40203;
}
#left ul li#active {
	background:#d40203;
	}
#c{
    font-family: Arial,Helvetica,sans-serif;
	font-size: 32px;
	margin-bottom: -15px;
}	

</style>
</head>
<body>


<div id="left2">
<aside id="left">
<ul>
<li id="c">카테고리</li>
</ul>
<ul>
<li><a href="../main/a.jsp">람보르기니</a></li>
<li><a href="../main/b.jsp">페라리</a></li>
<li><a href="../main/c.jsp">포르쉐</a></li>
<li><a href="../main/d.jsp">부가티</a></li>
<li><a href="../main/e.jsp">아우디</a></li>
</ul>
</aside>
</div>


</body>
</html>