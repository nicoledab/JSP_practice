<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<h1> main 페이지 ..!! 0416</h1>

<% 
 // -----------------세션: 
 String id = (String)session.getAttribute("memId");


%>


<%if(id == null){%>
 <input type="button" value="로그인" onclick="window.location='LoginForm.jsp'" />
 <%}else{ %>
  <b> <%=id %> 님 어서오세요~~ </b>
  <input type="button" value= "회원정보 변경" 
      onclick="window.location='updateForm.jsp'"/> 
  <input type="button" value= "로그아웃" 
      onclick="window.location='logout.jsp'"/> 
      
<input type="button" value= "탈 퇴" 
      onclick="window.location='deleteForm.jsp'"/>
<%} %>


      <br /> <br />
      
 <input type="button" value= "게시판" 
      onclick="window.location='/jsp/board/list.jsp'"/>  
      
      
      
      
      