function disney_review_delete(del) {
	
	let ok = confirm("정말로 삭제하시겠습니까?");
	
	//alert(ok);
	
	if(ok) {
		
		location.href = 'DisneyReviewDeleteC?no=' + del;
		
	}
	
}


function disney_check() {
	
	let input = document.getElementById('i');
	
	
	if(isEmpty1(input)){
		alert('검색어를 입력해주세요.');
		return false;
	}
	
	
}

function disney_reg_check() {
	let input1 = document.getElementById('i1');
	let input2 = document.getElementById('i2');
	let input3 = document.getElementById('i3');
	let input4 = document.getElementById('i4');
	let input5 = document.getElementById('txt');
	
	if(isEmpty1(input1) || isEmpty1(input2) || isEmpty1(input3) || isEmpty1(input4) || isEmpty1(input5)){
		alert('공백이 있습니다.');
		return false;
	}
	
	if(moreThan_d(input5, 500)) {
		alert('500자를 초과하셨습니다.');
		input5.focus();
		
		return false;
	}
	}

function disney_reg_check2() {
	let input1 = document.getElementById('i1');
	let input2 = document.getElementById('i2');
	let input3 = document.getElementById('i3');
	let input4 = document.getElementById('i4');
	let input5 = document.getElementById('i5');
	
	if(isEmpty1(input1) || isEmpty1(input2) || isEmpty1(input3) || isEmpty1(input4) || isEmpty1(input5)){
		alert('공백이 있습니다.');
		return false;
		}
	
	
	if(moreThan_d(input5, 500)) {
		alert('500자를 초과하셨습니다.');
		input5.focus();
		
		return false;
	}
	
	}

function disney_reg_check3() {
	let input1 = document.getElementById('i1');
	let input2 = document.getElementById('i2');
	let input3 = document.getElementById('i3');
	
	if(isEmpty1(input1) || isEmpty1(input2) || isEmpty1(input3)){
		alert('공백이 있습니다.');
		return false;
		}
		
	if(moreThan_d(input3, 50)) {
		alert('50자까지만 입력 할 수 있습니다.');
		input3.value = '';
		input3.focus();
		
		return false;
	}
	
	}



function isEmpty1(input){
	return !input.value;
}


function moreThan_d(input, length) {
	
	return input.value.length >= length;
	
}


function disney_best_delete(no) {
	
	let ok = confirm("정말로 삭제하시겠습니까?");
	
	//alert(ok);
	
	if(ok) {
		
		location.href = 'DisneyBestDeleteC?no=' + no;
		
	}
	
}



function formPath1(c) {
	
	c.action = 'DisneyReviewRegC';
	c.submit();
	return true;
	
}

function formPath2(c) {
	
	c.action = 'DisneyBestC';
	c.submit();
	return true;
	
}


function d_pleaseLogin() {
	
	alert('로그인이 필요한 작업입니다.');
	return false;
}

