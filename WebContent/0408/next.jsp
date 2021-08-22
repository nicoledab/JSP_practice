<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
  <% 
  application.log(request.getRemoteAddr()+"===> /jsp/0408/next.jsp");
  %>  
  
    <h1> next 페이지 ! </h1>
    
<h1> request: <%=request.getAttribute("ra") %></h1>
<h1> session: <%=session.getAttribute("sa") %></h1>
<h1> application :<%=application.getAttribute("aa") %></h1>
