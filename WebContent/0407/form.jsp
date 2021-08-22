<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>form 페이지 ..! </h1>

<a href="pro.jsp?id=java&num=100"> 경제 </a>
<a href="pro.jsp?id=java&num=200"> 사회  </a>
<br />



<form action="pro2.jsp" method="get">
입력 : <input type= "text" name ="str" /> <br />
번호 : <input type= "password" name ="num" /> <br />
성별 : <input type= "radio" name ="gender" value="man" /> 남자 
     <input type= "radio" name ="gender" value="woman" /> 여자 
     <br />
과목 : <input type="checkbox" name="ch" value="aa"/> 국어  
      <input type="checkbox" name="ch" value="bb"/> 수학
      <input type="checkbox" name="ch" value="cc"/> 영어  
    <br />
내용 : <textarea name="content"></textarea>
 <br />
 통신사 : <select name="">
    <option value="s"> skt </option>
    <option value="kt">kt </option>
    <option value="u">u+ </option>
 </select>
 
    <input type= "submit" value="전송" />
    
 </form>
    
    <%-- 
    - 입력하는것이 곧 value.
       hello를 입력하면, str = hello 
    - submit -> 경로로 이동함! (서밋은 하나만 입력한다. )
    - method="post" 로 입력하면 주소쪽에 전달되는 파라미터가 안보임. 
     --%>

