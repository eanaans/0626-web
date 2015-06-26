<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<html>
<head> <title> [fileUpload1.jsp] </title> 
	<style type="text/css">
		b,input { font-size:20pt; font-weight:bold; }
	    a {font-size:16pt; font-weight:bold;  text-decoration:none ; }
		a:hover {font-size:32pt; font-weight:bold;  text-decoration:underline; color:red;  }    
	</style>
</head>

<%! 
	private int data1;
	private String data2 ;
	private String data3 ;
	private String data4 ;
	private String path;
%>
 
<body>
  <font size=7 color=blue><b> [fileUpload1.jsp] </b></font> <p>  
 <%
    path = application.getRealPath("/filesave");     
    DefaultFileRenamePolicy drp = new DefaultFileRenamePolicy( );
    int size = 10*1024*1024;
    MultipartRequest mr = null ;
    mr = new MultipartRequest(request,path,size,"euc-kr",drp);
 
 	data1 = Integer.parseInt(mr.getParameter("sabun"));
 	data2 =mr.getParameter("name");
 	data3 =mr.getFilesystemName("file1"); 
 	data4 = mr.getParameter("ref");
 %>
 	<font size=6>
 		<b>
 			넘어온사번: <%= data1 %> <br>
 			넘어온이름: <%= data2 %> <br>
 			넘어온파일: <%= data3 %> <br>
 			넘어온참조: <%= data4 %> <br>
 		</b>
 	</font>
 	<p>
 	
   <img src="<%= request.getContextPath()%>/filesave/<%=data3 %>" width=500 height=200>
   <img src="/filesave/<%=data3 %>" width=500 height=200>	
   <br>
   <h2>
 	경로:<%=path%>/<%= data3 %>
  </h2>
</body>
</html>





