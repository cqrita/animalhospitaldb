<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SiteMap</title>
<style type="text/css">

body {
  background: white;
  font-family: 'Inter UI', sans-serif;
  margin: 0;
  padding: 20px;
}

nav ul {
	list-style-type: none;
	padding: 0;
}

nav ul li {
	font-size: 15px;
	font-family: sans-serif;
	background-color: white;
	border: 2px solid black;
	letter-spacing: 0.1em;
	width: 12em;
	height: 1.5em;
	line-height: 1.5em;
	position: relative;
	overflow: hidden;
	margin: 0.5em;
	cursor: pointer;
}

nav ul li span {
	color: white;
	mix-blend-mode: difference;
}

nav ul li::before {
	content: '';
	position: absolute;
	width: 1.5em;
	height: inherit;
	background-color: black;
	border-radius: 50%;
	top: 0;
	left: -0.75em;
	transition: 0.5s ease-out;
}

nav ul li:hover::before {
	transform: scale(7);
}
form {
	padding-top :80px;
	padding-left: 20px;
}
</style>
<script src="/animalhospital/resources/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$("#1").on("click", function() {
		location.href="https://www.animal.go.kr/front/index.do"
	});
	$("#2").on("click", function() {
		location.href="http://www.kaha.or.kr/page/index.php"
	});
	$("#3").on("click", function() {
		location.href="http://anipharm.net/"
	});
	$("#login").on("click", function() {
		location.href="login"
	});
	$("#insert").on("click", function() {
		location.href="member"
	});
	if($("#board")){
		$.ajax({
			url : '/animalhospital/sitemap/show',
			data : {},
			type: 'post',
			dataType: 'json',
			success: function(list) {
				$("#board").empty();
				for(var i=0;i<list.length;i++){
					var board="<tr><td hidden='hidden'>"+i+"</td><td>"+list[i].date+"</td><td>"+list[i].title+"</td><td>"+list[i].text+"</td><td><button  class='del'>삭제</button></td></tr>";            
					$("#board").append(board);
				}
			}
		});
		$("#in").on("click", function() {
			$.ajax({
				url : '/animalhospital/sitemap/insert',
				data : {'date': $("#date").val() ,'title': $("#title").val(),'text': $("#text").val()},
				type: 'post',
				dataType: 'json',
				success: function(list) {
					$("#board").empty();
					for(var i=0;i<list.length;i++){
						var board="<tr><td hidden='hidden'>"+i+"</td><td>"+list[i].date+"</td><td>"+list[i].title+"</td><td>"+list[i].text+"</td><td><button  class='del'>삭제</button></td></tr>";            
						$("#board").append(board);
					}
				}
			});
		});
		$("#board").on("click",$(".del") ,function(e) {
			var seq=$(e.target).parent().prev().prev().prev().prev().html();
			$.ajax({
				url : '/animalhospital/sitemap/delete',
				data : {'seq': seq},
				type: 'post',
				dataType: 'json',
				success: function(list) {
					$("#board").empty();
					for(var i=0;i<list.length;i++){
						var board="<tr><td hidden='hidden'>"+i+"</td><td>"+list[i].date+"</td><td>"+list[i].title+"</td><td>"+list[i].text+"</td><td><button  class='del'>삭제</button></td></tr>";            
						$("#board").append(board);
					}
				}
			});
		});
	}	
})
</script>
</head>
<body>
<!-- <div class="body1" style="width:27%"> -->
	<form action="/animalhospital/sitemap" method="get"></form>

<%if(session.getAttribute("loginid")==null){ 	
%>
<button id="login">login</button>
<button id="insert">insert</button>
 <% 
}else{
%><jsp:include page="insertmember.jsp"></jsp:include> 
<!-- 	<jsp:include page="logout.jsp"></jsp:include> -->
<% 	
}%>

<h1>외부사이트 맵</h1>
  <ul>
    <li id="1">동물보호관리시스템</li>
    <li id="2">동물보호협회</li>
    <li id="3">동물약국협회</li>
  </ul>

<%if(session.getAttribute("loginid")!=null){ 	
%>
<h4>일정을 등록하세요.</h4>
<input type="date" id="date" name="date"><br>
<input type="text" id="title" name="title"><br>
<textarea id="text" rows="5" cols="25"></textarea><br>
<input id="in" type="button" value="등록"><br>

<table id="board">

</table>	
<% 
}%>

</body>
</html>
