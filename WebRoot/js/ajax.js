	var xmlHttp;
    	function f_create(){
	    	try{
	    		xmlHttp = new XMLHttpRequest();
	    	}catch(e){
	    		try{
	    			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP"); 
	    		}catch(e){
	    			try{
	    				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	    			}catch(e){
	    				alert("����������֧��Ajax");
	    				return;
	    			}
	    		}
	    	}
	    	xmlHttp.onreadystatechange = function (){
	    		if(xmlHttp.readyState == 4 && xmlHttp.status == 200){
	    			document.getElementById("i_code").innerHTML = xmlHttp.responseText;
	    		}
	    	}
	    }
	    function f_change(v){
	    	//ʹ���������򿪶Է�����������
	    	xmlHttp.open("get", "checkCode.jsp?code="+v , true);
	    	//�Է�������������
	    	xmlHttp.send(null);
		}
    	function f_put(){
    		document.getElementById("i_i").innerHTML = "<img src='Code'/>";
    		return false;
    	}
    	