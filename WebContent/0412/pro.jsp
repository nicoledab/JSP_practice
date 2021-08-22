<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.File" %>

<%
//String savePath = "c://save//"; //파일저장경로
String savePath = request.getRealPath("save/img"); //서비스중인 save 폴더. 폴더이름 넣어주기
System.out.println(savePath);

int maxSize = 1024*1024*10; //10MB
String enc = "UTF-8";  // 한글파이명 인코딩
DefaultFileRenamePolicy drp= new DefaultFileRenamePolicy();  //덮어씌우기방지
//MultipartRequest mr = new MultipartRequest(request,savePath,maxSize,enc,drp);
MultipartRequest mr = new MultipartRequest(request,savePath,maxSize,enc,drp);

//String wirter = request.getParameter("writer");xxxxxx
String writer = mr.getParameter("writer");

Enumeration enu = mr.getFileNames(); //파일에 해당되는 파라미터 이름을 꺼내준다. 파라미터명 type="file"
while(enu.hasMoreElements()){
	 String name = (String)enu.nextElement(); 
	// System.out.println("=name="+mr.getFilesystemName(name));
	// System.out.println("=type="+mr.getContentType(name)); //파일종류
    
	 
	 //**/------------------------이미지 아닌거 삭제하기!!!
	 String type =mr.getContentType(name);  
	if(type !=null){
	 String [] t = type.split("/"); //  img /jpeg 를 기준으로 
	 if(t[0].equals("image")){
		 out.println("<h2>업로드 되었습니다.<h2>"); 
		 //out.println만 하면, 브라우저로 출력.
		 
	 }else{
		 File f = mr.getFile(name); //<%@ page import="java.io.File" import해주기
		 f.delete();
		 System.out.println("업로드 실패! 사진만 업로드 할 수 있습니다. ");
	 }

	}//if(type !=null) //파일이 null이 아닐때를 위해 
	 
} // while 


String sn= mr.getFilesystemName("save"); // 업로드된 파일명 
String on= mr.getOriginalFileName("save");  //원본 파일명 

%>

<h1> writer = <%=writer %></h1>
<h1> 업로드된 파일명 = <%=sn%></h1>
<h1> 원본 파일명 = <%=on%></h1>


<img src="/jsp/save/img/<%=sn%>" />