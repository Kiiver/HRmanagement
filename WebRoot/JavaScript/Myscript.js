function checkYGJBXXform(form){
	//�ǿ�����
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
	//������ID,����Ϊ��ֵ��
	if(isNaN(form.GXRID.value)){
		alert("data of GXRID must be int");
		return false;
	}
	//date�������ݸ�ʽ����
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
function checkYGGZform(form){
	//������ID,����Ϊ��ֵ��
	if(isNaN(form.RID.value)){
		alert("data of RID must be int");
		return false;
	}
	if(form.JBGZ.value==""){
		form.JBGZ.focus();
		return false;
	}
	if(form.YXBS.value==""){
		form.YXBS.focus();
		return false;
	}
	if(isNaN(form.GXRID.value)){
		alert("data of GXRID must be int");
		return false;
	}
	if(form.GXLX.value==""){
		form.GXLX.focus();
		return false;
	}
	return true;
}
function checkXXLLform(form){
	//������ID,����Ϊ��ֵ��
	if(isNaN(form.RID.value)){
		alert("data of RID must be int");
		return false;
	}
	//date�������ݸ�ʽ����
	if(form.QSRQ.value==""){
		form.QSRQ.focus();
		return false;
	}
	if(form.JZRQ.value==""){
		form.JZRQ.focus();
		return false;
	}
	if(isNaN(form.GXRID.value)){
		alert("data of GXRID must be int");
		return false;
	}
	if(form.GXRXM.value==""){
		form.SCRXM.focus();
		return false;
	}
	return true;
}