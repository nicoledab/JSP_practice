<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
	<h1>pro2 페이지~~!</h1>
	
	<% 
	
	 request.setCharacterEncoding("UTF-8");  //한글처리용 
	
	 String str = request.getParameter("str");
	 String num = request.getParameter("num");
	 
	 //String ch = request.getParameter("ch"); //가장 앞에 있는것만 출력
	 String [] ch = request.getParameterValues("ch"); 
	 // 선택된것만 넘어온다. get -> 이 코드 // 체크 박스에서만 사용된다!
	 
	 for(String c : ch){
 %>		 <h2>ch = <%=c%></h2>
	<%}%>
	
	
	<%
		 Enumeration enu = request.getParameterNames(); //해당 모든 이름(key)을 다꺼내준다.
		while(enu.hasMoreElements()){ //hasMoreElement- 값이 있는지 판단하는. 
			String key = (String)enu.nextElement(); // 꺼내준다는 뜻. 
			String value = request.getParameter(key);
%>			<h3><%=key+"="+value %> </h3>
	<%}%>

	
	
	
	
	
	
	
	
	
	
	
	