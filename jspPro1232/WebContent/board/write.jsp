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
	$("#btnSave").click(function(){
		 document.form1.submit();
		
	});
});

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
#write{
margin-left:35%;
}
</style>
</head>
<body>
<!-- header태그  -->
<%@ include file="../main/head.jsp" %>
<!-- 카테고리태그 -->


<div id="write">


<h2>글쓰기</h2>
<form name="form1" method="post" 
action="${path}/board_servlet/insert.do" 
enctype="multipart/form-data">
<table border="1" width="700px">
  <tr>
    <td>이름</td>
    <td><input name="writer" id="writer"></td>
  </tr>
  <tr>
    <td>제목</td>
    <td><input name="subject" id="subject" size="60"></td>
  </tr>
  <tr>
    <td>본문</td>
    <td><textarea rows="5" cols="60" 
    name="content" id="content"></textarea></td>
  </tr>
  <tr>
    <td>첨부파일</td>
    <td><input type="file" name="file1"></td>
  </tr>
  <tr>
    <td>비밀번호</td>
    <td><input type="password" name="passwd" id="passwd"></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="button" value="확인" id="btnSave">
    </td>
  </tr>
</table>
</form>
</div><!-- write -->

</body>
</html>