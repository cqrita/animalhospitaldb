<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/mymvc/resources/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#ajaxbtn").on("click", function() {
		$.ajax({
			url : '/animalhospital/pharmacy/message',
			data : {'a1':$},
			type: 'post',
			dataType: 'json',
			success: function(serverdata) {
				$("#result").html(serverdata.title);
			}
		});
	});
});
</script>

</head>
<body>

</body>
</html>