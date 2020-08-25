<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.body1 {
	margin: 0;
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background: linear-gradient(to right bottom, gray, white);
	float: left;
}
nav ul {
	list-style-type: none;
	padding: 0;
}

nav ul li {
	font-size: 17px;
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
})
</script>
</head>
<body>
<div class="body1" style="width:27%">
<aside>
<h1>외부사이트 맵</h1>
<nav>
  <ul>
    <li id="1"><span>동물보호관리시스템</span></li>
    <li id="2"><span>동물보호협회</span></li>
    <li id="3"><span>동물약국협회</span></li>
  </ul>
</nav>
</aside>
</div>
</body>
</html>
