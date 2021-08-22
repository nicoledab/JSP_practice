<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.model.bean.TestMemberDAO" %>
<h1>confirm.. 페이지!!</h1>
<%
	String id = request.getParameter("id");
	TestMemberDAO dao = new TestMemberDAO();
	boolean result = dao.idCheck(id);
	if(result){%>
		<h1> 입력한 [<%=id%>] 사용중입니다. 다른id를 사용하세요~</h1>
	<%}else{%>
		<h1> 입력한 [<%=id%>] 사용가능</h1>
	<%}%>
	<input type="button" value="닫기" onclick="selfClose();"/>

<script type="text/javascript">
	function selfClose(){
		var r = <%=result%>;	
		var h ="<b><font color=green>사용가능</font></b>";
		if(r){
			h="<b><font color=red>사용 불가능</font></b>";
		}
		opener.document.getElementById("idresult").innerHTML=h;
		self.close();
	}
</script>