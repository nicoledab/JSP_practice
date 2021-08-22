<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.model.bean.DataBean" %>
   <h1> pro 페이지 ! </h1>
   
   
   <%  //한글처리 
     request.setCharacterEncoding("UTF-8"); // post방식 한글 인코딩
     
     //String id = request.getParameter("id"); 할필요없다
     //javabean - databean 활용해보기 !(객체생성이 되어져 있음)
     // 1.DataBean bean = new DataBean(); =  밑에  <jsp:useBean~~~~
                    //객체 생성 태그 
       
       
   %>
   
   
   
   <%-- usebean 객체생성 태그: 기본생성자만 사용가능. import 할 필요 x  --%>
   <jsp:useBean class="test.model.bean.DataBean" id="bean" />
   <jsp:useBean class="test.model.bean.FormDTO" id="dto" />
   
   
                                   
   <%--파라미터를 받아, bean 객체의 set 메서드를 호출한다, get 파라미터를 할 필요 x --%>
                        <%-- property=id 대신 property= *를 찍으면 모든걸 받는다 --%>       
   <jsp:setProperty name="bean" property="*" />
   <jsp:setProperty name="dto" property="*" />
   

   <h1> id = <jsp:getProperty name="bean" property="id" /></h1>
   <h1> pw = <jsp:getProperty name="bean" property="pw" /></h1>
   <h1> name = <jsp:getProperty name="bean" property="name" /></h1>
   <h1> age = <jsp:getProperty name="bean" property="age" /></h1>
   <h1> address = <jsp:getProperty name="dto" property="address" /></h1>
   <h1> gender = <jsp:getProperty name="dto" property="gender" /></h1>
   
   
   
   
   
   
   
   
   
   