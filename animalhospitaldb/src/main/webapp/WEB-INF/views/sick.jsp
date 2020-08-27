<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건강/질병정보</title>

<style>
body {
  background: white;
  font-family: 'Inter UI', sans-serif;
  margin: 0;
  padding: 20px;
}

</style>


<script type="text/javascript">
	window.onload = function() {
		var button1 = document.getElementById('button1');
		var button2 = document.getElementById('button2');
		var button3 = document.getElementById('button3');
		var button4 = document.getElementById('button4');

		// buttion1 : 예방접종
		button1.onclick = function() {
			show.innerHTML = "<h2>강아지 예방접종</h2>"+
			"1.혼합예방주사 (DHPPL)	기초접종<br>"+
			"- 생후 6 ~ 8주에 1차 접종	<br>"+
			"- 추가접종 : 1차 접종 후 2 ~ 4주 간격으로 2 ~ 4회<br>"+
			"- 보강접종 : 추가접종 후 매년 1회 주사<br>"+
			"※ 혼합예방주사 : Canine Distemper (홍역), Hepatitis (간염), Parvovirus (파보장염), Parainfluenza (파라인플루엔자), Leptospira (렙토스피라) 혼합주사임.<br>"+
			"2. 코로나바이러스성 장염(Coronavirus)	기초접종<br>"+
			"- 생후 6 ~ 8주에 1차 접종	<br>"+
			"- 추가접종 : 1차 접종 후 2 ~ 4주 간격으로 1 ~ 2회<br>"+
			"- 보강접종 : 추가접종 후 매년 1회 주사<br>"+
			"3. 기관ㆍ기관지염 (Kennel Cough)	기초접종<br>"+
			"- 생후 6 ~ 8주에 1차 접종<br>"+
			"- 추가접종 : 1차 접종 후 2 ~ 4주 간격으로 1 ~ 2회<br>"+
			"- 보강접종 : 추가접종 후 매년 1회 주사<br>"+
			"- 광견병	기초접종 : 생후 3개월 이상 1회 접종<br>"+
			"- 보강접종 : 6개월 간격으로 주사<br>"+
			"<h2>고양이 예방접종</h2>"+
			"1. 혼합예방주사 (CVRP)	기초접종 <br>"+
			"- 생후 6 ~ 8주에 1차 접종<br>"+
			"- 추가접종 : 1차 접종 후 2 ~ 4주 간격으로 2 ~ 3회<br>"+
			"- 보강접종 : 추가접종 후 매년 1회 주사<br>"+
			"2. 고양이 백혈병 (Feline Leukemia)	기초접종 <br>"+
			"- 생후 9 ~ 11주에 1차 접종<br>"+
			"- 추가접종 : 1차 접종 후 2 ~ 4주 간격으로 1 ~ 2회<br>"+
			"- 보강접종 : 추가접종 후 매년 1회 주사<br>"+
			"3. 전염성 복막염 (FIP)<br>"+
			"- 추가접종 : 1차 접종 후 2 ~ 3주 간격으로 1회<br>"+
			"- 보강접종 : 추가접종 후 매년 1회 주사<br>"+
			"4. 광견병	기초접종<br>"+
			"- 생후 3개월 이상 1회 접종<br>"+
			"5. 보강접종<br>"+
			"- 1개월 간격으로 주사<br>";
			
		};
		
		//buttion2 : 질병
		button2.onclick = function() {	
			show.innerHTML ="<h2>질병의 종류</h2><hr>"+
			"호흡기 : 	콧물, 계속되는 재채기, 기침, 구역질, 호흡 곤란, 심한코골이<br><hr>"+
			"눈 : 눈의 분비물, 시력 감퇴, 염증, 감염으로 인한 출혈, 흐린 테가 끼는 경우<br><hr>"+
			"귀	: 귀 고름, 머리를 흔들어 대는 경우, 귀가 부어 오르는 경우, 균형상실, 난청<br><hr>"+
			"입	침을 질질 흘리는 경우, 식욕 저하, 잇몸의 염증, 구취, 이빨이 부러지거나 흔들리는 경우<br><hr>"+
			"외부기생충 : 지나치게 핥는 경우, 기생충이 발견되는 경우, 비듬, 탈모, 긁적거림<br><hr>"+
			"피와 심장	: 지나친 기침, 빈혈, 무기력증, 지나친 기침, 운동을 기피하는 경우<br><hr>"+
			"뼈, 근육, 관절	: 감염된 부분의 부어 오름, 다리를 만지면 통증을 느끼는 경우, 마비, 절룩거림<br><hr>"+
			"신경성 :	발작이나 경련, 비틀거리는 걸음걸이 일부 또는 전신 마비<br><hr>"+
			"소화기 : 행동상의 변화, 균형의 상실, 체중의 과도한 변화, 식욕 상실, 변비, 설사 구토<br><hr>"+
			"피부 및 털	: 갑자기 씹어 대거나 핥는 경우, 염증 또는 종양, 탈모, 계속 긁어 대는 경우<br><hr>"+
			"생식기 :	유방의 통증, 생식 불능, 유산, 출산 후의 이상, 이상 분비물<br><hr>"+
			"비뇨기 :	배뇨가 힘든 경우, 혈뇨, 대소변 실금, 소변량의 증가, 배뇨의 감소<br><hr>"+
			"기생충 :	분비물에서 기생충을 발견하는 경우, 배가 부어 오르는 경우, 설사, 항문에서 이 물질을 발견 하는 경우, 체중 감소<br><hr>";
		};
		
		//button3 : 식사
		button3.onclick = function() {	
			show.innerHTML = "<h2>식사관리</h2>동물체의 주요한 구성성분은 수분, 단백질, 지방, 광물질 그리고 극히 소량의 탄수화물이며, 각각의 구성비율은 동물품종, 연령, 성별 및 동물의 상태에 따라 다르다.<br>"+
			"지방이나 소화관의 내용물을 제외하고는 동물체의 조성은 거의 물이 75%, 단백질 20%, 광물질 5% 및 탄수화물이 1% 이하로 되어 있다.<br>"+
			"음식물은 에너지를 공급하는 고유의 음식물(탄수화물, 지방 및 단백질)과 생명에는 반드시 필요하나 에너지를 공급하지 않는 수분, 무기 염류 및 비타민으로 분류한다.<br>"+
			"음식물은 다른 영양소와 함께 에너지를 공급해야 되는데, 에너지는 근육운동과 체온을 유지시킬 뿐 아니라 호흡이나 심장기능의 유지 등에도 필요하다.<br>"+
			"한편, 에너지가 많은 음식물을 다량으로 섭취하면 체내에 체지방이 축적되어 비만의 원인이 되기 쉽고 반대로 필요량에 부족하게 되면 성장이 불량하거나,체중이 감소되어 야위고 쉽게 병에 걸리게 된다.<br>"+
			"개는 엄격한 의미에서 육식성 동물이 아니므로 육류만으로는 생존할 수 없다.<br>"+
			"<h2>반려견이 먹으면 안되는 음식물</h2><hr>"+
			"양파 : 어떤 식으로 요리해도 양파의 독성은 없어지지 않는다. 양파의 강한 독성은 개나 고양이의 적혈구를 녹여 버리며, 심한 경우에는 급성 빈혈을 일으켜 죽기도 한다.<br><hr>"+
			"초콜렛 : 초콜렛은 중독을 일으킨다. 섭취 시 지나치게 활동적이거나 흥분상태를 보이기도 하고, 다른 음식은 먹지도 않아도 구토를 자주 하게 되고 노란색의 점액질을 토해낸다.<br><hr>"+
			"우유 : 우유에는 모유에는 없는 유당이 함유되어 있으나, 강아지는 선천적으로 유당을 분해할 수 있는 효소가 없다. 어린 강아지에게 설사를 일으키는 원인이 되기도 하며 설사는 2차 감염원이 되기도 하므로 특별한 경우가 아니면 급여를 삼가해야 한다.<br><hr>"+
			"생선 : 등푸른 생선에는 DHA가 많이 함유되어 있지만 어린강아지는 DHA를 분해하는 효소가 없어서 소화가 되지 않고 바로 배설된다. 그리고 생선가시는 소화되지 않고 소화기관에 상처나 염증을 유발 할 수도 있다. 기름이 많이 함유된 생선통조림은 설사와 구토를 일으키고 많은 양의 기름은 강아지에게 소화장애를 일으키므로 급여를 삼가해야 한다."+
			"닭뼈 : 소화가 되었을 때 뼈가 날카롭게 분해되면서 소화기관에 상처를 내어 염증이나 혈변, 심한 경우에는 죽음에 이르게 할 수 있다.<br><hr>"+
			"마른 오징어 : 개들은 음식을 씹지 않고 바로 소화기관으로 넘기므로 오징어나 쥐포 등을 먹으면 입과 식도, 위까지 손상될 수 있으므로 주지 않는다.<br><hr>"+
			"채소류의 과잉섭취 : 어느 정도의 채소류의 섭취는 섬유질이 있어 소화흡수에 도움이 되지만, 많은 양의 채소류는 공급과잉이 되며 체외로 배출되므로 적당량을 준다.<br><hr>";
		};
		
		//button4 : 응급사항
		button4.onclick = function() {	
			show.innerHTML = "<h2>응급처치방법</h2>"+
			"반려견의 교통사고, 일사병, 골절이나 화상, 급한 호흡의 곤란 등으로 인한 경우 빠르게 대응하여 애견을 사고로부터 구할 수 있다.<br>"+
			"이런 사고를 당한 반려견은 쇼크나 통증으로 사납고 난폭해지므로 인간의 신체에 해가 가지 않게 해야한다.<br>"+
			"특히 물지 못하도록 기본적인 안전장치를 한 다음 애견에 적절한 응급치료나 적당한 방법으로 병원으로 데려간다.<br>"+
			"부상당한 장소가 복잡하거나 위험에 노출된 장소이면 곧 바로 안전한 장소로 이동 시킨다.<br>"+
			"운반할 때는 개의 신체가 심하게 흔들리거나 또 다른 충격을 받지 않도록 한다.<br>"+
			"흥분하거나 쇼크 상태이기 때문에 침착하게 개에게 말을 걸어 주의를 끌어 안심시키고, 많은 사람들의 접근을 막는다.<br>"+
			"쇼크나 통증으로 주인도 물 수 있으므로 항상 주의를 요한다.<br>"+
			"적당한 보호장치와 같은 조치를 취해 물지 못하도록 방지한다. 또한 응급처치나 운반을 할 때는 장갑이나 수건을 이용하여 개의 몸을 감싸여 이동한다.<br>"+
			"응급처치는 신속하게 정확하게 한다. 긴 타월을 이용해 개의 복부를 타월로 감싸고 목 부분을 묶은 뒤 개를 안아서 운반한다.<br>"+
			"판자나 두꺼운 시트를 들 것 대용으로 이용할 경우, 개를 바닥으로 미끄러지듯이 부드럽게 이동시킨다.<br>"+
			"개가 떨어지거나 충격을 받지 않도록 하기 위하여 끈이나 부드러운 천을 이용해 묶어서 고정 시켜준다.<br>";
		};			
	};
</script>

</head>
<body>
	<h1>질병 검색</h1>

	<jsp:include page="menu.jsp"></jsp:include>
	<br>
	<form action="/animalhospital/sick" method="get"></form>
  <button id="button1">예방접종</button>
  <button id="button2">질병</button>
  <button id="button3">식사</button>
  <button id="button4">응급처치사항</button>
  <br>
	<div id="show">조회하고자 하는 항목을 선택해주세요.</div>
</body>
</html>