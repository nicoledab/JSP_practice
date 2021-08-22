<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.web.ValueCheck" %>


  <%--
  - 비밀번호 - 6~9 글자수 
  - 대소문자 하나이상 포함(아스키코드 확인)
      대문자: 95~90
      소문자: 97~122
  - 특수문자는(!-33 ?-63 ^-94)만 
  --%>
  
  <% 
    String result="";
    String pw = request.getParameter("pw");
    
    // 생년월일 입력받아 나이로 출력 입력 예) 19960614  출력= 32세
    String day = request.getParameter("day");
    java.util.Date d = new java.util.Date(); //오늘 날짜
    
    //오늘 날짜에서 년도만 추출 - 날짜는 1900년도에서 지나간 시간을 출력하기 때문에 1900을 더한다. 
    int year = d.getYear()+1900; 
    
    // 입력받은 생년월일에서 년도 추출 19960315 에서 앞 4자리 잘라낸 후 숫자로 변경
    year = year - Integer.parseInt(day.substring(0, 4)); 
    
    
    String pwresult = "형식에 맞지 않은 비밀번호";
    
    if(pw != null){
   ValueCheck vc = new ValueCheck(); //자바 클래스 호출 
    boolean a = vc.charLength(pw, 6, 9);
    boolean b = vc.charBig(pw);
    boolean c = vc.charsmall(pw);
    
    }
    
    
    
    String id = request.getParameter("id");
    
    
/*
     if(a && b && c ){
    	result = "비밀번호 형식에 준수함.";
    }*/
    
    /*
    int size = pw.length();   // 글자수를 리턴해주는 메소드
    if(size >= 6 && size <=9){
    	result += "글자수 준수함";
    }
    
    //java11?  -입력하면, 7글자.size=7 ,0~6
    int x=0 , y=0 , z=0;
    
    for(int i=0; i < size; i++){ //size -위에서 대입해놓은 글자수
    	char c =pw.charAt(i); //0번째부터 들어가서 번호를 비교
    	if(c>= 65 && c <= 90){ //대문자 조건을 찾는다
    		x++;
    	}
    	if(c >= 97 && c <= 122){ // 소문자
    		y++;
    	}
    	if(c == 33 || c==63 || c==94){ //특수문자
    		z++;
    	}
    }
    
    if(x > 0 && y > 0 && z> 0){
      result+="문자 형식에 준수하였습니다. ";  	
    }
     */
    //자바 scr에 ValueCheck 확인해보기!!!
  %>
  
  <h2> 아이디: <%= id%> </h2>
  <h2> 비밀번호: <%= pw%> </h2>
  <h2> 나이 = <%= year%>세</h2>
  
  
  
  