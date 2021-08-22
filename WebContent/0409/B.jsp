<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>b 페이지 </h1>

<% 
 	// response.sendRedirect("C.jsp");
   // request.getRequestDispatcher("C.jsp").forward(request, response);
            //forward - 이동: 전체내용이 지정된 페이지로 이사간다 url 변경안됨 
            //redirect  - 지정된 페이지로 단순이동  url 변경됨 
            // 둘다 많이 쓰인다. 

%>

<jsp:forward page="C.jsp">
  <jsp:param name="id" value="aaaaa" />
</jsp:forward>

