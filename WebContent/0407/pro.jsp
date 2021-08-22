<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>pro 페이지 ..!</h1>

<% 
 String id = request.getParameter("id");
String num = request.getParameter("num");
	if(num.equals("100")){
		num = "경제 뉴스입니다.";}
	else if(num.equals("200")){
		num = "사회 뉴스입니다.";
	}

%>

<h1>id = <%=id %></h1>
<h1>num = <%=num %></h1>

<!--   결과:    
	pro 페이지 ..!
	id = java
	num = 사회(경제)  뉴스입니다.

 -->