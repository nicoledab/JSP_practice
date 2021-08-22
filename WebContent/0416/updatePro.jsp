<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%@ page import="test.model.bean.TestMemberDTO" %>
<%@ page import="test.model.bean.TestMemberDAO" %>
    
    <h1> updatePro 페이지 !!</h1>
    
    
    <%
    String path = request.getRealPath("save");
    String enc="UTF-8"; 
    int max = 1024*1024*10;
    DefaultFileRenamePolicy dp = new DefaultFileRenamePolicy();
    MultipartRequest mr = new MultipartRequest(request,path,max,enc,dp);
    
    String id =(String)session.getAttribute("memId");
    String pw = mr.getParameter("pw");
    String name = mr.getParameter("name");
    String age = mr.getParameter("age");
    String img = mr.getFilesystemName("img");
    
    TestMemberDTO dto = new TestMemberDTO();
    dto.setId(id);
    dto.setPw(pw);
    dto.setName(name);
    dto.setAge(age);
    dto.setImg(img);
    
    
    TestMemberDAO dao = new TestMemberDAO();
    dao.updateMember(dto);
    
    
    %>
    
    <script>
     alert("수정되었습니다.")
     window.location= "main.jsp";
    </script>
    
    
    
    
    