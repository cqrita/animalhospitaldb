<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/animalhospital/resources/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#ajaxbtn").on("click", function() {
		var city= $("#city").children("option:selected").val();
		var county= $("#county").children("option:selected").val();
		if(city!="지역을 선택해주세요" && county!="지역을 선택해주세요"){
			$.ajax({
				url : '/animalhospital/pharmacy/message',
				data : {'a1': $("#city option:selected").val() ,'a2': $("#county option:selected").val()},
				type: 'post',
				dataType: 'json',
				success: function(med) {
					$("#tab").empty();
					for(var i=0;i<med.length;i++){
						if(med[i].tel=="null"){
							med[i].tel=""
						}
						var tab="<tr id="+med[i].seq +"><td>"+med[i].name+"</td><td>"+med[i].nameAddress+"</td><td>"+med[i].tel+"</td><td id='x' hidden='hidden'>"+med[i].X+"</td><td id='y' hidden='hidden'>"+med[i].Y+"</td></tr>";            
						$("#tab").append(tab);
					}
				}
			});
		}
	});	//on
	$("#city").change(function() {
		var city= $("#city").children("option:selected").val();
		if(city!="지역을 선택해주세요"){
			$.ajax({
				url : '/animalhospital/pharmacy/county',
				data : {"a1": $("#city option:selected").val()},
				type: 'post',
				dataType: 'json',
				success: function(county) {
					$("#county").empty();
					$("#county").append("<option value=\"지역을 선택해주세요\" selected=\"selected\">지역을 선택해주세요</option>");
					for(var i=0;i<county.length;i++){
						var option="<option value=\""+county[i]+"\">"+county[i]+"</option>"
						$("#county").append(option);
					}
				},
				error: function(request,status,error) {
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		}
	});//change
});
</script>
</head>
<body>
	<select name="city" id="city">	
		<option value="지역을 선택해주세요" selected="selected">지역을 선택해주세요</option>
		<option value="서울특별시">서울특별시</option>
		<option value="경기도">경기도</option>
	</select>
	<select name="county" id="county">
		<option value="지역을 선택해주세요" selected="selected">지역을 선택해주세요</option>
	</select>
	<br>
	<button id="ajaxbtn" name="ajaxbtn">검색</button>
	<table>
		<colgroup>
			<col width="10%">
			<col width="80%">
			<col width="10%">
			<col width="0%">
			<col width="0%">
		</colgroup>
		<tr>
			<th>약국명</th>
			<th>주소</th>
			<th>전화번호</th>
			<th id='x' hidden='hidden'></th>
			<th id='y' hidden='hidden'></th>
		</tr>
	</table>
	<div style="height: 500px;overflow: auto;">
	<table id="tab">
		<colgroup>
			<col width="10%">
			<col width="80%">
			<col width="10%">
			<col width="0%">
			<col width="0%">
		</colgroup>
	</table>
	</div>
</body>
</html>