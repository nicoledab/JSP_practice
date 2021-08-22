
 <%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import="test.web.Tv" %> 
 <h1> main 페이지 ..!!! </h1>

﻿<%! //자바 작성 구역 - 클래스 영역

  int x= 100; // 인스턴스 변수
  static int y= 200; // 클래스 변수 
%>

<% 
// 자바 작성구역 - 메서드 영역 
int x = 100; // 지역변수
System.out.println(x); // console 결과 출력 
%>


	<%
		Tv t = new Tv();
		t.channel = 100;
	%>
	
	
	
<%
  	String [] str = {"JAVA", "JSP", "TEST", "WEB"};
  	for(int i = 0; i <str.length; i ++)
  	{
%>		

<h1> 번호 <%=i%> ==> <%=str[i] %></h1>


 <% }%>
  		


    
    
    
