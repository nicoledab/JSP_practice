<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="test.model.bean.empDTO" %>
<%@ page import="test.model.bean.empDAO" %>
<h1>empSelect 페이지..!!!</h1>

<% 
	empDAO dao = new empDAO();
  ArrayList<empDTO> list =dao.select();
	for(empDTO emp : list){%>
	<h3><%=emp.getEmpno() %> <%=emp.getEname() %> <%=emp.getJob() %>
	 <%=emp.getHiredate() %> <%=emp.getMgr() %> <%=emp.getComm() %>
	  <%=emp.getSal() %> <%=emp.getDeptno() %> </h3>
	  
	<%}%>