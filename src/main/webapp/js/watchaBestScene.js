
function deleteBestScene(n){
	let ok = confirm('삭제 합니까?');
	
	if(ok){
		location.href='WatchaBestSceneDelC?no=' + n;
	}
}
function updateBestScene(n){
	let ok = confirm('수정 합니까?');
	
	if(ok){
		location.href='WatchaBestSceneUpdateC?no=' + n;
	}
}

