<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.model.bean.TestMemberDAO" %>

<h1> confirm 페이지 ..!!!! </h1>

<%
  String id = request.getParameter("id");
	TestMemberDAO dao = new TestMemberDAO();
	boolean result = dao.idCheck(id);
	if(result){%>
	<h1> 입력한 [<%=id%>] 사용중입니다. 다른 id를 사용하세요~</h1>
   <%}else{%>
   <h1>입력한 [<%=id%>] 사용가능 </h1>
   <%}%>
                              
 <input type="button" value="닫기" onclick="selfClose();"/>


<script type="text/javascript">  
function selfClose(){
	var r = <%=result%>;
	var h ="<b><font color=green>사용가능</font></b>";
	if(r){
		//opener.document.getElementById("idresult").innerHTML="<b><font color=red>불가능</font></b>";
		h ="<b><font color=red>사용불가능</font></b>";
	}
	// opner = 부모 페이지/부모의 전체내용/idresult 찾고/
	opener.document.getElementById("idresult").innerHTML=h;
	self.close();
}

</script>


 <h3> 입력한 id = <%=id%> 사용가능</h3>    


