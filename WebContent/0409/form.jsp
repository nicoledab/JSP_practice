<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1> form 페이지  </h1>
<h2>날짜- 04/09 </h2>

<form action="pro.jsp" method="post">
id : <input type="text" name="id" /> <br />
비밀번호 : <input type="text" name="pw" /> <br />
이름 : <input type="text" name="name" /> <br />
나이 : <input type="text" name="age" /> <br />
주소 : <input type="text" name="address" /> <br />
성별 : <input type="radio" name="gender" value="man"/> 남자 <br />
      <input type="radio" name="gender" value="woman"/> 여자 <br />
    <input type="submit" value="전송" />
</form>

