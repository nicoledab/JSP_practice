<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<% 
 // String empno = request.getParameter("empno");
int empno = Integer.parseInt(request.getParameter("empno"));
 
 Class.forName("oracle.jdbc.driver.OracleDriver"); //오라클에 연결하는 드라이브 
 
 //2단계 db연결(로그인) url /계정 / 비밀번호 
 String dbHost = "jdbc:oracle:thin:@masternull.iptime.org:1521:orcl";
      //                                             //    port : s
 String user = "java21"; // 본인 계정
 String pass ="java"; 
 Connection conn = DriverManager.getConnection(dbHost, user, pass);
 
 
 // 3단계 : SQL문 작성                  //위치홀더  empno=? and ename=? and job=? 이런식으로 ... 
 String sql="select * from emp where empno=?";  
 PreparedStatement pstmt = conn.prepareStatement(sql);
 pstmt.setInt(1, empno);
//pstmt.setInt(2, emp);~
//pstmt.setInt(3, empo);~


	ResultSet rs = pstmt.executeQuery(); //select 사용 

	if(rs.next()){
		out.println(rs.getInt("empno"));
		out.println(rs.getString("ename"));
		out.println(rs.getString("job"));
		out.println(rs.getInt("mgr"));
		out.println(rs.getTimestamp("hiredate"));
		out.println(rs.getInt("sal"));
		out.println(rs.getInt("comm"));
		out.println(rs.getInt("deptno"));
		out.println("<br />");
	}else{
		out.println(empno+" = 없는 사원입니다...!");
	}



	rs.close(); 
	pstmt.close();
 	conn.close();  // 연결종료.!!!


%>