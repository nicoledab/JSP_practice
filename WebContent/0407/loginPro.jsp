<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <h1>loginPro 페이지 ~~!</h1>
    
    <% 
     String id = request.getParameter("id"); //key를 넣어서 value에 대입.
     String pw = request.getParameter("pw");
     String result = "형식에 맞지 않습니다!";
     
     // id : 5글자 이상 / 첫글자는 무조건 알파벳 
     int size= id.length(); //글자 사이즈
     if(size >=5 && size <= 9){ //5~9 사이만 true
    	 char s = id.charAt(0); //첫글자 확인 
     	if( s >= 65 && s <= 122){ //대문자 A~Z, 소문자 a~z: 65~ 122
    	 	result = id + " 확인되었습니다.";
     	}
     }
     
    %>
    
    <h1> 결과 = <%=result %></h1>