<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1> request 페이지 ..! </h1>

<%
  String addr = request.getRemoteAddr(); // 사용자 IP
String uri =request.getRequestURI(); // ip:port를 제외한 나머지 주소
StringBuffer url = request.getRequestURL(); //http 포함한 전체경로
String path = request.getRealPath("0407"); // 서버의 실제 파일경로

%>
<h3> path= <%=path %></h3>
<h3> <%= addr %></h3>
<h4> <%= uri %></h4>
<h4> <%= url %></h4>