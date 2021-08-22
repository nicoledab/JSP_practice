<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    
<h1> top 페이지 !! </h1>
<%
 	request.setCharacterEncoding("UTF-8");
 	String name = request.getParameter("name");
%>

<h1> 이름 <%=name %></h1>

<hr color="red"  />