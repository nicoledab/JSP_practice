<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.model.bean.TestMemberDAO" %>
<h1> loginPro 페이지 ..! 0416 </h1>

<jsp:useBean id="dto"  class="test.model.bean.TestMemberDTO" />
<jsp:setProperty property="*" name="dto" /> 

<%
    //TestMemberDAO id/pw 확인
    TestMemberDAO dao = new TestMemberDAO();
     boolean result = dao.loginCheck(dto);
     
     if(result){
    	    // 세션 생성 -id 저장       key    / value    로 이루어진 map 타입
    //세션 방식: 
    	session.setAttribute("memId", dto.getId());
	
    	    
    	 /*     //쿠키 방식
    	    Cookie coo = new Cookie("cooId", dto.getId());
    	    // 쿠키 유효기간 설정 
    	    coo.setMaxAge(60); // 60초후 쿠키 자동 삭제
    	    
    	         //이건 자동로그인할때 필요! -  Cookie coo2 = new Cookie("cooPw", dto.getPw());
    	    response.addCookie(coo);  //사용자에 전달*/
    	    
    	    response.sendRedirect("main.jsp");
     }else {%>
    	 <script>
			alert("아이디/비밀번호 확인하세요 ...!");
			history.go(-1)		//이전 페이지로 가세요-라는 의미
			
			</script>
   <%  } %>
     
     
%>