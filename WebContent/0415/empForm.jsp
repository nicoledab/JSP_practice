<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <h1> empForm 페이지 ..!!!</h1>
    
    <form action="empInsert.jsp" method="post">
     사원번호 : <input type="text" name="empno" /> <br />
     사원 이름 : <input type="text" name="ename" /> <br />
     사원 업무 : <input type="text" name="job" /> <br />
     사원 상사 : <input type="text" name="mgr" /> <br />
     입사 날짜 : <input type="text" name="hiredate" /> <br />
     사원 연봉 : <input type="text" name="sal" /> <br />
     보너스 : <input type="text" name="comm" /> <br />
     부서 번호 : <input type="text" name="deptno" /> <br />
     <input type="submit" value="등록" />
 </form>