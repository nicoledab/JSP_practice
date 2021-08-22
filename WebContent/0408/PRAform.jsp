<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>form 페이지..!!(연습)</h1>

<script>
   function test(num){
      a = 100;
      alert("알림창"+a+num);
   }
   
   
   function sub(){
      var id = document.inform.id.value;
      if(id){
    	  //alert(id+ ": 입력되었습니다.");
    	  
      }else{
    	  alert("id를 입력하세요");
    	  document.inform.id.focus();
    	  return false;
      }
      var pw = document.inform.pw.value;
      var pwc = document.inform.pwc.value;
      if(pw!= pwc){
    	  alert(" 비밀번호를 를 동일하게 입력하세요.");
    	  return false;
      }
   } //sub() 끝
   
</script>


<form name="inform" action="pro.jsp" method="post" onsubmit="return sub();">
  <h4> practice </h4> 
   
   id : <input type="text" name="id" /> <br />
   	pw : <input type="password" name="pw" /> <br />
 	pw 확인: <input type="password" name="pwc" /> <br /> 
 	생년월일: <input type="text" name="day" /> <br />
       <input type="submit" value="전송" />
</form>