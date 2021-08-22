<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <h1>c 페이지 </h1>
    
    
<% 
 	 String name = request.getParameter("name");
 	 String id = request.getParameter("id");
%>

    <h1> 이름 : <%=name%></h1>
    <h1> id : <%=id%></h1>