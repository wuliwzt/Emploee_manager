// JavaScript Document


function login_validate() {
	if (document.loginForm.username.value == "") {
		alert("�û�������Ϊ��");
		return false;
	}
	if (document.loginForm.password.value == "") {
		alert("���벻��Ϊ��");
		return false;
	}
	if (document.loginForm.randcode.value == "") {
		alert("��֤�벻��Ϊ��");
		return false;
	}
}
function emploe_validate() {
	
	var patn = /\.jpg$|\.bmp$|\.jpeg$|\.gif$|\.png$/i;
	var allowString ="jpg,jpeg,gif,png,bmp";

	if (document.emploeForm.name.value == "") {
		alert("���벻�Ϸ���Ա����������Ϊ�գ�");
		return false;
	}
	if (document.emploeForm.sex.value == "") {
		alert("���벻�Ϸ���Ա���Ա���Ϊ�գ�");
		return false;
	}
	if (document.emploeForm.birthday.value == "") {
		alert("���벻�Ϸ���Ա�����ղ���Ϊ�գ�");
		return false;
	}
	if (document.emploeForm.flay.value == "") {
		alert("���벻�Ϸ���Ա�������Ϊ�գ�");
		return false;
	}
	if (document.emploeForm.xl.value == "") {
		alert("���벻�Ϸ���Ա��ѧ������Ϊ�գ�");
		return false;
	}
	if (document.emploeForm.orgid.value == "") {
		alert("���벻�Ϸ���Ա�����Ų���Ϊ�գ�");
		return false;
	}
	if (document.emploeForm.zwid.value == "") {
		alert("���벻�Ϸ���Ա��ְλ����Ϊ�գ�");
		return false;
	}
	if (document.emploeForm.mobile.value == "") {
		alert("���벻�Ϸ���Ա���绰����Ϊ�գ�");
		return false;
	}
	if (document.emploeForm.address.value == "") {
		alert("���벻�Ϸ���Ա����ַ����Ϊ�գ�");
		return false;
	}
	
	var photo = document.emploeForm.photo.value;
	if (photo != "") {
		if(!patn.test(photo)){
			 alert("ͼƬ��ʽ����ȷ��ֻ���ϴ�����ͼƬ��ʽ��"+allowString);
			 return false;
		}
	}
}