function checkYGJBXXform(form){
	//非空属性
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
	//更新人ID,必须为数值型
	if(isNaN(form.GXRID.value)){
		alert("data of GXRID must be int");
		return false;
	}
	//date类型数据格式控制
	if(form.BYRQ.value==""){
		form.BYRQ.focus();
		return false;
	}
	if(form.JZZQSRQ.value==""){
		form.JZZQSRQ.focus();
		return false;
	}
	if(form.JZZJZRQ.value==""){
		form.JZZJZRQ.focus();
		return false;
	}
	if(form.SCRZRQ.value==""){
		form.SCRZRQ.focus();
		return false;
	}
	if(form.LZRQ.value==""){
		form.LZRQ.focus();
		return false;
	}
	return true;
}