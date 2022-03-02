
/*게시글 삭제*/
function n_reviewDelete(n) {
	let ok = confirm('게시글을 삭제하시겠습니까?')

	if (ok == true) {
		location.href = 'n_reviewDeleteC?n_no=' + n;
	} else {
		return;
	}

}


/*추천페이지 영화 리뷰보기*/
function n_checkReview() {
	let n_titleSearch = document.getElementById('test');
	let n_searchVal = n_titleSearch.value;

	location.href = 'n_recommReviewSearchC?n_search=' + n_searchVal;

}


/*리뷰게시판 검색하기*/
function n_searchReview() {

	let n_SSelect = document.getElementById('testtwo');
	let n_SSelectVal = n_SSelect.value;

	let n_search = document.getElementById('n_search');
	let n_searchVal = n_search.value;
	

	if (n_SSelectVal == 'n_SAll') {
		location.href = 'n_reviewSearchC?n_search=' + n_searchVal + '&n_Select=' + n_SSelectVal;
	}

	if (n_SSelectVal == 'n_SMovieTitle') {
		location.href = 'n_reviewSearchC?n_search=' + n_searchVal + '&n_Select=' + n_SSelectVal;
	}

	if (n_SSelectVal == 'n_SSearchFreeTitle') {
		location.href = 'n_reviewSearchC?n_search=' + n_searchVal + '&n_Select=' + n_SSelectVal;
	}
}



/*리뷰게시판 로그인 한 사람만 글쓰기*/
function n_reviewLoginWrite() {
	alert('먼저 로그인을 해주세요.');
	return;
}

function n_reviewLoginWriteOk() {

	location.href = 'n_reviewWriteC';
}



/*리뷰 작성 후 Post형식으로 보내기*/

function n_reviewWritePost() {

	let n_genreSelect = document.getElementById('n_genreSelect');
	let n_genreSelectVal = n_genreSelect.options[n_genreSelect.selectedIndex].value;

	let n_reviewWTitle1 = document.getElementById('n_reviewWTitle1');
	let n_reviewWTitle1Val = n_reviewWTitle1.value;

	let n_reviewWTitle2 = document.getElementById('n_reviewWTitle2');
	let n_reviewWTitle2Val = n_reviewWTitle2.value;

	let n_reviewWTxt1 = document.getElementById('n_reviewWTxt1');
	let n_reviewWTxt1Val = n_reviewWTxt1.value;

	if (n_genreSelectVal == '카테고리') {
		alert('카테고리를 선택해주세요!')
		return false;
	}

	if (n_reviewWTitle1Val == '') {
		alert('제목을 입력해주세요!')
		return false;
	}

	if (n_reviewWTitle2Val == '') {
		alert('영화 제목을 입력해주세요!')
		return false;
	}

	if (n_reviewWTxt1Val == '') {
		alert('내용을 입력해주세요!')
		return false;
	}

	let f = document.createElement('form');
	f.setAttribute('method', 'post');
	f.setAttribute('action', 'goPost.do');
	document.body.appendChild(f);
	f.submit();
}

/*명장면 게시판 로그인 한 사람만 글쓰기*/
function n_bestLoginWrite() {
	alert('먼저 로그인을 해주세요.');
	return;
}

function n_bestLoginWriteOk() {
	
	let n_bestWFile = document.getElementById('n_bestWFile1');
	let n_bestWFile1 = n_bestWFile.value;
	
	let n_bestWTitle = document.getElementById('n_bestWTitle1');
	let n_bestWTitle1 = n_bestWTitle.value;
	
	let n_bestWTxt = document.getElementById('n_bestWTxt1');
	let n_bestWTxt1 = n_bestWTxt.value;
	
	let f = document.createElement('form');
	f.setAttribute('method', 'post');
	f.setAttribute('action', 'goPost.do');
	document.body.appendChild(f);
	
	
	if(n_bestWFile1 == ''){
		alert('사진을 첨부해주세요!');
		return false;
	} else if(n_bestWTitle1 == ''){
		alert('영화 제목을 적어주세요!');
		return false;
	} else if(n_bestWTxt1 == ''){
		alert('내용을 25자 이내로 적어주세요!');
		return false;
	} else {
	f.submit();
	}


	
}

/*명장면 게시판 게시글 삭제하기*/
function n_bestDelete(n) {
	let ok = confirm('게시글을 삭제하시겠습니까?')

	if (ok == true) {
		location.href = 'n_bestDeleteC?n_no=' + n;
	} else {
		return;
	}

}




/*명장면 게시판 게시글 수정*/
function n_bestEdit(n) {
	let ok = confirm('게시글을 수정하시겠습니까?')

	if (ok == true) {
		location.href = 'n_bestEditC?n_no=' + n;
	} else {
		return;
	}

}


/*명장면게시판 게시글작성*/
function n_bestEditOk() {
	
	let n_bestWFile = document.getElementById('n_bestWFile1');
	let n_bestWFile1 = n_bestWFile.value;
	
	let n_bestWTitle = document.getElementById('n_bestWTitle1');
	let n_bestWTitle1 = n_bestWTitle.value;
	
	let n_bestWTxt = document.getElementById('n_bestWTxt1');
	let n_bestWTxt1 = n_bestWTxt.value;
	
	let f = document.createElement('form');
	f.setAttribute('method', 'post');
	f.setAttribute('action', 'goPost.do');
	document.body.appendChild(f);
	
	
	if(n_bestWFile1 == ''){
		alert('사진을 첨부해주세요!');
		return false;
	} else if(n_bestWTitle1 == ''){
		alert('영화 제목을 적어주세요!');
		return false;
	} else if(n_bestWTxt1 == ''){
		alert('내용을 25자 이내로 적어주세요!');
		return false;
	} else {
	f.submit();
	}
}


/*명장면게시판 검색하기*/

function n_bestSearch() {

	let n_bSearchSelect = document.getElementById('n_bSearchSelect');
	let n_bSearchSelectVal = n_bSearchSelect.value;

	let n_bestSearch = document.getElementById('n_bestSearch');
	let n_bestSearchVal = n_bestSearch.value;
	

	if (n_bSearchSelectVal == 'n_bSearchAll') {
		location.href = 'n_bestSearchC?n_bestSearch=' + n_bestSearchVal + '&n_bSearchSelect=' + n_bSearchSelectVal;
	}
	
	if (n_bSearchSelectVal == 'n_bSearchMovieTitle') {
		location.href = 'n_bestSearchC?n_bestSearch=' + n_bestSearchVal + '&n_bSearchSelect=' + n_bSearchSelectVal;
	}
	
	if(n_bSearchSelectVal == 'n_bSearchStory') {
		location.href = 'n_bestSearchC?n_bestSearch=' + n_bestSearchVal + '&n_bSearchSelect=' + n_bSearchSelectVal;
	}
}


function n_intro_Calc(){
	let n_introCalcMonth = document.getElementById('n_introCalcMonth');
	let n_introCalcMonthVal = n_introCalcMonth.value;
	
	let n_introCalcPeople = document.getElementById('n_introCalcPeople');
	let n_introCalcPeopleVal = n_introCalcPeople.value;
	
	if(n_introCalcMonthVal==''){
		alert('개월수를 입력해주세요!');
		return false;
	} else if(n_introCalcPeopleVal == ''){
		alert('인원을 입력해주세요!');
		return false;
	} else{
	location.href= 'n_introduceCalcC';
	}
	
}












