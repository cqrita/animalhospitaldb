<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물병원 검색</title>
<style type="text/css">
/* div{overflow:scroll;height:500px; width:500px;} */
/* thead {display:block; background-color: orange;}
th{width: 100px; border:2px solid green ; }
tbody {display:block; height:300px; width:300px; overflow:scroll; border:2px solid green; background-color: olive;  }
td {width: 200px;  height:100px; text-align: center; border:2px solid green collapse; } */
@import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700');


table ,tr td, tr th{
    border:1px solid $color-form-highlight;
}
tbody {
    display:block;
    height:500px;
    overflow:auto;
}

thead, tbody tr {
    display:table;
    width:100%;
    table-layout:fixed;/* even columns width , fix width of table too*/
}

thead {
    width: calc( 100% - 1em );/* scrollbar is average 1em/16px width, remove it from thead width */
    background:#000;
    color: white;
} 

table {
    width:100%;
}
td {
	
}
</style>
<script src="/animalhospital/resources/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#ajaxbtn").on("click", function() {
		var city= $("#city").children("option:selected").val();
		var county= $("#county").children("option:selected").val();
		if(city!="지역을 선택해주세요" && county!="지역을 선택해주세요"){
			$.ajax({
				url : '/animalhospital/hospital/message',
				data : {'a1': $("#city option:selected").val() ,'a2': $("#county option:selected").val()},
				type: 'post',
				dataType: 'json',
				success: function(med) {
					$("#tab").empty();
					for(var i=0;i<med.length;i++){
						if(med[i].tel.includes("null")){
							med[i].tel="";
						}
						var tab="<tr id="+med[i].seq +"><td>"+med[i].name+"</td><td class='address'>"+med[i].nameAddress+"</td><td>"+med[i].tel+"</td><td class='x' hidden='hidden'>"+med[i].x+"</td><td class='y' hidden='hidden'>"+med[i].y+"</td></tr>";            
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
				url : '/animalhospital/hospital/county',
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
		}else{
			$("#county").empty();
			$("#county").append("<option value=\"지역을 선택해주세요\" selected=\"selected\">지역을 선택해주세요</option>");
		}
	});//change
});
</script>
</head>
<body>
	<jsp:include page="sitemap.jsp"></jsp:include>
	<div style="margin-left:27%">
	<h1>동물병원 검색</h1>
	<select name="city" id="city">	
		<option value="지역을 선택해주세요" selected="selected">지역을 선택해주세요</option>
		<option value="서울특별시">서울특별시</option>
		<option value="부산광역시">부산광역시</option>
		<option value="대구광역시">대구광역시</option>
		<option value="인천광역시">인천광역시</option>
		<option value="광주광역시">광주광역시</option>
		<option value="대전광역시">대전광역시</option>
		<option value="세종특별자치시">세종특별자치시</option>
		<option value="경기도">경기도</option>
		<option value="강원도">강원도</option>
		<option value="충청북도">충청북도</option>
		<option value="충청남도">충청남도</option>
		<option value="전라북도">전라북도</option>
		<option value="전라남도">전라남도</option>
		<option value="경상북도">경상북도</option>
		<option value="경상남도">경상남도</option>
		<option value="제주특별자치도">제주특별자치도</option>
	</select>
	<select name="county" id="county">
		<option value="지역을 선택해주세요" selected="selected">지역을 선택해주세요</option>
	</select>
	<br>
	<button id="ajaxbtn" name="ajaxbtn">검색</button>
	<div>
		<table>
			<thead>
				<tr>
					<th>병원명</th>
					<th>주소</th>
					<th>전화번호</th>
					<th id='x' hidden='hidden'></th>
					<th id='y' hidden='hidden'></th>
				</tr>
			</thead>
			<tbody id="tab">

			</tbody>
		</table>
	</div>
	<jsp:include page="menu.jsp"></jsp:include>
	</div>

</body>
</html>