<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="test.model.bean.TestMemberDTO" %>
<%@ page import="test.model.bean.TestMemberDAO" %>
    <h1> updateForm 페이지 !</h1>
    
    <%
    String id = (String) session.getAttribute("memId");
    TestMemberDAO dao = new TestMemberDAO();
    TestMemberDTO dto = dao.getMember(id);
    
    %>
    
    <form action="updatePro.jsp" method="post" enctype="multipart/form-data">
     id : <%=id%> <br />
     pw : <input type="password" name="pw" value="<%=dto.getPw()%>" /> <br />
     name : <input type="text" name="name" value="<%=dto.getName()%>" /> <br />
     age : <input type="text" name="age" value="<%=dto.getAge()%>" /> <br />
     img : <%if(dto.getImg() == null) { %>
      <input type="file" name="img" /> 대표이미지를 등록하세요!!! <br />
            <%}else{%>
            <img src="/jsp/save/<%=dto.getImg()%>"/> <br/>
            <input type ="file" name="img" /> 수정 <br /> 
            
       <%}%>
       <input type="submit" value ="정보 수정" /> 
    </form>