<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="color.jsp"%>


<h1> passwdForm22222 페이지!! </h1>


<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
%>
<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">      
  function deleteSave(){	
	if(document.delForm.passwd.value==''){
		alert("비밀번호를 입력하십시요.");
		document.delForm.passwd.focus();
		return false;
 	}
}          
</script>
</head>

<body bgcolor="<%=bodyback_c%>">
<center><b>비밀번호 입력</b>
<br>
<form method="POST" name="delForm"  action="passwdPro.jsp" onsubmit="return deleteSave()"> 
	<table border="1" align="center" cellspacing="0" cellpadding="0" width="360">
		<tr height="30">
     		<td align=center  bgcolor="<%=value_c%>"><b>비밀번호를 입력해 주세요.</b></td>
  		</tr>
  		<tr height="30">
			<td align=center >
				비밀번호 : <input type="password" name="passwd" size="8" maxlength="12">
						 <input type="hidden" name="num" value="<%=num%>">
						 <input type="hidden" name="pageNum" value="<%=pageNum%>">
			</td>
		</tr>
 		<tr height="30">
    		<td align=center bgcolor="<%=value_c%>">
      			<input type="submit" value="비밀번호 확인" >
      			<input type="button" value="글목록" onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">     
   			</td>
 		</tr>  
	</table> 
</form>
</body>
</html> 