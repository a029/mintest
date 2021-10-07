<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function teston(){
	//이부분은 받아올 수 있는 문자열 정보가 없기 때문에 내가 직접 입력하기 위해 만듦
	let series = prompt(', 으로 구분 할 거에요');
	
	series = series.split(',');
	
	//2번째 요소의 상태가 어떤지 확인하기 위해 
	alert(series[1]);
	
	//, 앞 뒤의 빈칸 제거,
	for(var i = 0; i < series.length ;i++){
		series[i] = series[i].trim();
	};
	
	//여기까지 series = [xxx,yyy,zzz,aaa,bbb] 이런 형태
	//똑같은 자리의 요소 상태가 어떤지 확인 하기 위해(빈칸이 제거 되었나 확인함)
	alert(series[1]);
	
	//selectbox에 series의 요소를 option으로 넣음
	makeSelectBox(series);
}

function makeSelectBox(arr){//arr : 배열인 요소
	//selectbox라는 id의 엘레먼트에 반복적으로 <option> 태그를 끼워 넣어야 함
	//selectbox를 비우기 -> 옵션 태그 생성 -> selectbox에 집어넣기를 끝날때 까지 반복
	
	//selectbox 하위내용을 비우기
	const selectbox = document.getElementById('selectbox');//부분은 selectbox의 id로 바꾸면 됨
	while(selectbox.hasChildNodes()){
		selectbox.removeChild( selectbox.firstChild );
	}
	
	//옵션태그 생성 / 생성한 옵션태그를 selectbox하위로 넣기
	for(var i = 0; i < arr.length; i++){
		//<option></option>태그 만듦
		let option = document.createElement('option');
		
		//option태그안에 내용을 series[i]로 넣음
		option.innerHTML = arr[i];
		//만약에 option태그의 attribute를 넣어야 한다면 여기서 추가 해야함
		
		//selectbox의 마지막 자식 뒤에 option을 넣음
		selectbox.append(option);
	}
}
</script>
</head>
<body>
	<button type="button" onclick="teston();">테스트버튼</button>
	<select id="selectbox">
	
	</select>
</body>
</html>