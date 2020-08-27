<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
:root {
  --border-size: 0.125rem;
  --duration: 250ms;
  --ease: cubic-bezier(0.215, 0.61, 0.355, 1);
  --font-family: monospace;
  --color-primary: white;
  --color-secondary: black;
  --color-tertiary: dodgerblue;
  --shadow: rgba(0, 0, 0, 0.1);
  --space: 1rem;
}

* {
  box-sizing: border-box;
}


.multi-button {
  display: flex;
  width: 100%;
  box-shadow: var(--shadow) 4px 4px;
}

.multi-button button {
  flex-grow: 1;
  cursor: pointer;
  position: relative;
  padding:
    calc(var(--space) / 1.125)
    var(--space)
    var(--space);
  border: var(--border-size) solid black;
  color: var(--color-secondary);
  background-color: var(--color-primary);
  font-size: 1.5rem;
  font-family: var(--font-family);
  text-transform: lowercase;
  text-shadow: var(--shadow) 2px 2px;
  transition: flex-grow var(--duration) var(--ease);
}

.multi-button button + button {
  border-left: var(--border-size) solid black;
  margin-left: calc(var(--border-size) * -1);
}

.multi-button button:hover,
.multi-button button:focus {
  flex-grow: 2;
  color: white;
  outline: none;
  text-shadow: none;
  background-color: var(--color-secondary);
}

.multi-button button:focus {
  outline: var(--border-size) dashed var(--color-primary);
  outline-offset: calc(var(--border-size) * -3);
}

.multi-button:hover button:focus:not(:hover) {
  flex-grow: 1;
  color: var(--color-secondary);
  background-color: var(--color-primary);
  outline-color: var(--color-tertiary);
}

.multi-button button:active {
  transform: translateY(var(--border-size));
}
</style>
<script src="/animalhospital/resources/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#hom").on("click", function() {
		location.href="/animalhospital/menu/home"
	});
	$("#hos").on("click", function() {
		location.href="/animalhospital/menu/hospital"
	});
	$("#pha").on("click", function() {
		location.href="/animalhospital/menu/pharmacy"
	});
	$("#sic").on("click", function() {
		location.href="/animalhospital/menu/sick"
	});
	$("#map").on("click", function() {
		location.href="/animalhospital/menu/sitemap"
	});
})
</script>
</head>
<body>
<div class="multi-button">	
  <button id="hom">홈</button>
  <button id="hos">병원</button>
  <button id="pha">약국</button>
  <button id="sic">질병</button>
  <button id="map">사이트</button>
</div>
</body>
</html>