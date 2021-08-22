<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="test.model.bean.TestMemberDAO" %>
<%@page import="test.model.bean.TestMemberDTO" %>
    <h1> deletePro 페이지 !</h1>
    
    <% 
    String pw = request.getParameter("pw"); 
    String id = (String)session.getAttribute("memId"); //세션이 만들어지면 , getAttribute로 어디서든 꺼낼 수 있다.
    TestMemberDAO dao = new TestMemberDAO();
    boolean result = dao.deleteMember(id, pw);
    if(result){
       session.invalidate();
    %>
   	 <script>
     	 alert("탈퇴 되었습니다 ");
     	 window.location= "LoginForm.jsp";  // 탈퇴하면 돌아가는 페이지
   	 </script>
    <%}else{%>
   		 <script>
   			 alert("비밀번호가 틀렸습니다 ! ");
   			 history.go(-1); 
   		 </script>
    
    <%}%>