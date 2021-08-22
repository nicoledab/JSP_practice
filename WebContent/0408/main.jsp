<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1> main 페이지 ~ </h1>

<%
                 //사용자의 아이피를 출력     
 application.log(request.getRemoteAddr()+"==="+request.getRequestURI());
 log(request.getRemoteAddr()+ "===" +request.getRequestURI());
 
 request.setAttribute("ra", "requestAttribute");
 session.setAttribute("sa", "sessionAttribute");
 application.setAttribute("aa", "applicationAttribute");
        
 
 // response.sendRedirect("PRAform.jsp"); //응답.
  //form(로그인)으로 바로감. Redirect- 지정된 경로로 이동.
%>
<h1> request: <%=request.getAttribute("ra") %></h1>
<h1> session: <%=session.getAttribute("sa") %></h1>
<h1> application :<%=application.getAttribute("aa") %></h1>



<%   //포워드
  request.getRequestDispatcher("next.jsp").forward(request, response);
	
  //response.sendRedirect("next.jsp");

%>



