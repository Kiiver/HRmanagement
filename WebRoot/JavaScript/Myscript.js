function checkYGJBXXform(form){
	if(form.XM.value==""){
		form.XM.focus();
		return false;
	}
	if(form.SSBM.value==""){
		form.SSBM.focus();
		return false;
	}
	if(form.ZJHM.value==""){
		form.ZJHM.focus();
		return false;
	}
	if(form.SFYLDSC.value==""){
		form.SFYLDSC.focus();
		return false;
	}
	if(form.YDWSFBLTG.value==""){
		form.YDWSFBLTG.focus();
		return false;
	}
	if(form.SFBLGGJJ.value==""){
		form.SFBLGGJJ.focus();
		return false;
	}
	if(form.SFBLGSBJJ.value==""){
		form.SFBLGSBJJ.focus();
		return false;
	}
	if(form.SFBLGZHBX.value==""){
		form.SFBLGZHBX.focus();
		return false;
	}
	return true;
}