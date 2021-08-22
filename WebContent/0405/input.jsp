<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    id:<input type="text" /> 		 <br /> <%--한줄 입력 --%>
    pw:<input type="password" />    <br /> <%--한줄 입력, (*)표시됨 --%>
    남자<input type="radio" name="ra"/> 		 <br /> <%--라디오버튼 --%>
    여자<input type="radio" name="ra"/> 		 <br /> <%--라디오버튼. 
       name의 같은 이름이면, 같은 그룹이다.(둘중 하나만 선택이 가능--%>
       
       
    선택<input type="checkbox" /> 	 <br /> <%--체크박스 --%>
    업로드<input type="file" /> 		 <br /> <%-- 파일선택창 --%>
    <input type="button" value="로그인"/> 	 <br /> <%-- 일반버튼 --%>

    <br /><br />
    <%--번외~ 비표준. 브라우저마다 작동이 안될수도. .. --%>
    <input type="number" /> <br />
    <input type="color" /> <br />
    <input type="email" /> <br />
    <input type="date" /> <br />
    
    <textarea clos ="50" rows="10"></textarea> <br />
    
    
    <select>
    <option>skt </option>
    <option>kt </option>
    <option>u+</option>
    
    </select>