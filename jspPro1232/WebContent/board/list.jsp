<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	$("#btnWrite").click(function(){
		location.href="${path}/board/write.jsp";
	});
});

//클릭한 페이지로 이동
function list(page){
	location.href="${path}/board_servlet/list.do?curPage="+page;
}

</script>
<style type="text/css">
body{
margin: auto;
vertical-align: middle;
text-align:center;
}
#page{
margin: auto;
vertical-align: middle;
text-align: center;
width: 90%;
height: 100%;
}

#context{
margin-left: 120px;
margin-right: auto;
width: 60%;
}
#right{
margin-top:10px;
margin-right:10px;
}
#boarder1{
margin-left:20%;
}
</style>

</head>
<body>
<div id="page">

<!-- header태그  -->
<%@ include file="../main/head.jsp" %>
<!-- 카테고리태그 -->
<%@ include file="../main/left.jsp" %>

<div id="context">
<div id="images1">
<img src="../images/Rambo/Rambo (18).jpg" width="800px" height="500px">
<!-- <img src="../images/ferrari/Ferrari (1).jpg"> -->
</div>
<%@ include file="../main/right.jsp" %>


</div><!-- content -->



</div><!-- page  -->
</body>
</html>