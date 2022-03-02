function reviewDel(n){
	
	let ok = confirm('삭제 합니까?');
	
	if(ok){
		location.href='WatchaReviewDelC?no=' + n;
	}
}



function search(){
	
	let searchInput = document.getElementById('search');
	let searchVal = searchInput.value;
	if(searchVal ==''){
		alert('검색어를 입력하세요');
		return false;
	}else{
	location.href='WatchaReviewSearchC?search=' + searchVal;
	}

	
	
}
function bestSceneSearch(){
	
	let searchInput = document.getElementById('bestSceneSearch');
	let searchVal = searchInput.value;
	if(searchVal ==''){
		alert('검색어를 입력하세요');
		return false;
	}else{
	location.href='WatchaBestSceneSearchC?bestSceneSearch=' + searchVal;
	}

	
	
}

function updateReview(n){
	
	let ok = confirm('수정 합니까?');
	
	if(ok){
		location.href='WatchaReviewUpdateC?no=' + n;
	}
	
}

function watchaLoginBSWrite(){
	alert('로그인 먼저 해주시는 센스!')
	return false;
}
function watchaLoginBSWriteOK(){
	location.href='WatchaBestSceneWriteC';
}
function watchaLoginRWrite(){
	alert('로그인 먼저 해주시는 센스!')
	return false;
}
function watchaLoginRWriteOK(){
	location.href='WatchaReviewWriteC';
}
