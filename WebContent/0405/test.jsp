<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 hello world jsp web programming!!
  기본적으로 줄바꿈이라는게 없음. <br />body는 기본구조 
 
 hello world<br />web programming!! <br />

<!--   html 주석  -->
<%--   jsp 주석(이걸 주로 사용한다) --%>
<h1> 제목글 작성시 사용 굵은 글씨, 줄바꿈이 적용된다. </h1>
<h1> h1~ h6번까지 존재. h1이 가장 크다 </h1>

<b> b태그는 bold 글씨체 </b>
<i> i는 이텔릭체 </i>
<b><i> 굵고 기울림 </i></b>

<a href="http://naver.com">네이버</a> <br />
<a href="http://google.com">구글</a> <br />
<%--   링크  --%>
a태그는 이동 <br />

<br />
<br />

<img src="/jsp/0405/20200908_132556.png" /> <br /> 
<img src="/jsp/0405/테스트.png" width="200" height="300" /> <br /> 
<!--   이미지 -->


<a href="http://naver.com">
<img src="/jsp/0405/20200908_132556.png" width="200" height="300" /> <br />
</a> 
<!--   이미지 링크. 속성(attribute)는 항상 ""를 붙인다 -->



</body>
</html>