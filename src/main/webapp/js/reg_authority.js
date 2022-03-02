function wavee_reg(a){
	
	let ok = a;
	
	if(a){
	location.href='WaveeReviewRegC'
	return true;
	}
	else{
		alert('로그인 후 이용가능합니다.')
		return false;
	}
}

function w_reviewDel(n){
	
	let ok = confirm('정말 삭제하시겠습니까?');
	
	if(ok){
	location.href='WavveReviewDelC?no='+n;
	}
}
function w_reviewUpdate(n){
	
	let ok = confirm('수정하시겠습니까?');
	
	if(ok){
	location.href='WavveReviewUpdateC?no='+n;
	}
}

function index_pay(a,b){
	
	let people = a;
	let type = b;
	
	if(type.equals("베이직")&&people >= 2){
		alert('표를 참고하여 동시시청인원수를 확인해주세요')
		return false;
	}
	if(type.equals("스탠다드")&&people >= 3){
		alert('표를 참고하여 동시시청인원수를 확인해주세요')
		return false;
	}
	else{
		location.href='WavvePayC';
		return true;
	}
	
}
function w_deleteBest(a){
	let ok = confirm('정말 삭제하시겠습니까?');
	
	if(ok){
	location.href='WavveBestDelC?no='+a;
	}
}

function wavve_best_reg_authority(a){
	
	let ok = a;
	
	if(ok){
	location.href='WavveBestRegC'
	return true;
	}
	else{
		alert('로그인 후 이용가능합니다.')
		return false;
	}
}

function wavve_review_reg(){
	let title =  document.getElementById('title2');
	let title1 = title.value;
	let movie_title =  document.getElementById('movie_title');
	let movie_title1 = movie_title.value;
	let txt = document.getElementById('txt2');
	let txt1 = txt.value;
	let genre = document.getElementById('genre');
    let genre1 = genre.options[genre.selectedIndex].value;
	let grade = document.getElementById('grade');
    let grade1 = grade.options[grade.selectedIndex].value;

	if(genre1=='장르'){
		alert('장르를 선택해주세요')
		return false;
	}
	if(grade1=='평점'){
		alert('평점을 선택해주세요')
		return false;
	}
	if(title1==''){
		alert('제목을 입력해주세요')
		return false;
	}
	if(movie_title1==''){
		alert('영화제목을 입력해주세요')
		return false;
	}
	
	if(txt1==''){
		alert('내용을 입력해주세요')
		return false;
	}
	
	return true;
		
}
function wavve_best_reg(){
	let title =  document.getElementById('title2');
	let title1 = title.value;
	let file =  document.getElementById('file');
	let file1 = file.value;
	let story = document.getElementById('story');
	let story1 = story.value;
	
	
	
	if(title1==''){
		alert('제목을 입력해주세요')
		return false;
	}
	if(file1==''){
		alert('사진을 넣어주세요')
		return false;
	}
	
	if(story1==''){
		alert('설명을 입력해주세요')
		return false;
	}

	return true;
		
}

function wavve_pay_ok(){
	let title =  document.getElementById('wavve_pay_num');
	let title1 = title.value;
	
	if(title1==''){
		alert('공백은 입력할수없습니다.')
		return false;
	}
	
	return true;
}