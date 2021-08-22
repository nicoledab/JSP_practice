<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>  form 페이지 ! 0420</h1>
<h4>  아이디 중복확인 </h4>

<script type="text/javascript">
   function confirm(){    
	   
	   var id= document.inputForm.id.value;  //document.inputForm.id - 현재페이지 전체.formname.이름
	  //  alert(id);  //창에 아이디가 띄워짐 
	  
	   //새창경로 ,   이름(아무이름없음),        새창옵션 
	   open("confirm.jsp?id="+id,"confirm","width=400,height=300");   //새창 실행 함수 
    //         주소 뒤에 파라미터. 띄어진 새창 주소에 아이디가 있음.
   
   }
  
   
</script>


<form name="inputForm" method="get">   
id : <input type="text" name="id" />
      <input type="button" value="id중복확인" onclick= "confirm();"/> 
     <label id="idresult"></label> 
     <br />
     <input type="submit" value="가입" />

</form>

       


