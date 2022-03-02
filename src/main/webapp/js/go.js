function deleteAccount(i){
	
	let ok = confirm('정말 탈퇴 합니까?');
	
	if(ok){
		location.href = 'DeleteAccountC?id=' + i;
		
		
	}
	
	
	
}