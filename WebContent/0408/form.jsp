<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1> form 페이지..!</h1>

<script>

	 
	 function sub(){  //document(현재(전체)페이지). name속성.~ 
		var id = document.inform.id.value;

	 
	 	if(id){ //id가 입력되었으면.
	 		alert("id가 입력되었습니다.");
	 	} else{
	 		alert("id를 입력하세요!!");  
	 		document.inform.id.focus(); //아이디입력 부분에 커서. 
	 			 return false;  //페이지를 유지하게 하는것 
	 	}
	 	
		var pw = document.inform.pw.value;
	 	var pwc = document.inform.pwc.value;
	 	if(pw ! == pwc){
	 		alert("비밀번호를 동일하게 입력하세요"); 
	 		return false; 
	 	}
	 	
	 }
</script>



                    <!--   return 을 입력하면 다음페이지로 안넘어간다. -->
<form name="inform" action="pro.jsp" method="post" onsubmit="return sub();"> 
 	id : <input type="text" name="id" /> <br />
 	pw : <input type="password" name="pw" /> <br />
 	pw 확인: <input type="password" name="pwc" /> <br />
  	 <input type ="submit" value ="전송" /> 
 </form>
 
 
 
 
 
 
 
 
 
 