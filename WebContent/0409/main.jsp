<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="color.jsp"  %> <%-- 코드를 합친다 --%>

<%-- index 페이지의 name 파라미터를 받음 --%>
<% String name = request.getParameter("name"); %>

<%--top 페이지로 파라미터 전달 , 속성 내부에는 주석 쓰지 말기--%>
<jsp:include page="top.jsp" >
	<jsp:param name="name" value="<%=name%>" /> 
</jsp:include>

	<h1> main 페이지 !! </h1>
	<table> <%--blue --%>
	  <tr bgcolor="<%=table_c%>"><td>번호</td> <td>이름</td> </tr>
	  <tr><td>1</td>   <td>홍길동</td> </tr>
	  <tr bgcolor="<%=table_c%>"><td>2</td>   <td>이순신</td> </tr>
	</table>

