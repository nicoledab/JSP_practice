<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>


<%@ page import="test.model.bean.empDAO" %>
 <% request.setCharacterEncoding("UTF-8"); %>   
    <jsp:useBean class="test.model.bean.empDTO" id="emp" />
    <jsp:setProperty name="emp" property="*" />
    
    
    <%
    
      empDAO dao = new empDAO();
    dao.insert(emp);
    
    /*
    Class.forName("oracle.jdbc.driver.OracleDriver"); //오라클에 연결하는 드라이브 
    
    String dbHost = "jdbc:oracle:thin:@masternull.iptime.org:1521:orcl";
    String user = "java21"; // 본인 계정
    String pass ="java"; 
    Connection conn = DriverManager.getConnection(dbHost, user, pass);

    
    String sql="insert into emp Values(?,?,?,?,sysdate,?,?,?)";  
    PreparedStatement pstmt = conn.prepareStatement(sql);
    // int empno = Integer.parseInt(emp.getEmpno()); //숫자로 변경된 emp.
    // pstmt.setInt(1,empno);
    pstmt.setInt(1, Integer.parseInt(emp.getEmpno()));
    pstmt.setString(2, emp.getEname());
    pstmt.setString(3, emp.getJob());
    pstmt.setInt(4, Integer.parseInt(emp.getMgr()));
    // pstmt.setString(5, emp.getHiredate());
    pstmt.setInt(5, Integer.parseInt(emp.getSal()));
    pstmt.setInt(6, Integer.parseInt(emp.getComm()));
    pstmt.setInt(7, Integer.parseInt(emp.getDeptno()));
    
    pstmt.executeUpdate();  //4단계 실행. 
    
    pstmt.close();
    conn.close();*/
    
    %>
    
    <h2> 사원이 추가되었습니다! </h2>
    <h3> <a href="/jsp/0414/dbConnectionTest.jsp"> emp 사원테이블 확인 </a></h3>
    
    