function call(){
	let input = document.getElementById('i1');
	
	
	if(isEmpty(input)){
		alert('공백은 안됨')
		
		return false;
	}
	
	if(isNotNumber(input)){
		alert('숫자만 입력')
		
		return false;
	}
}