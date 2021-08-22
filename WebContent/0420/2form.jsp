<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>form 페이지..!!</h1>

<script type="text/javascript">
	function confirm(){
		var id = document.inputForm.id.value;
		open("confirm.jsp?id="+id ,"confirm","width=400,height=300");  
	}
</script>

<form name="inputForm" method="get">
	id : <input type="text" name="id" /> 
		 <input type="button" value="id중복확인" onclick="confirm();"/>
		 <label id="idresult"></label>
		 <br />
		<input type="submit" value="가입" />
</form>