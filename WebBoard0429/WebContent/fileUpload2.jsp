<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
 <body>
	<font size=7 color=blue><b> [fileUpload2.jsp] </b></font><p>
	<%
		request.setCharacterEncoding( "euc-kr" );
		request.getParameter("euc-kr") ;
	%>
	<%
		ServletContext context = config.getServletContext();
		String realPath = context.getRealPath( "filesave" );
		new File( realPath ).mkdir(); 
		
		MultipartRequest mr = new MultipartRequest( 
				request, realPath, 1024*1024*5, "euc-kr", new DefaultFileRenamePolicy() );	
		
		int data1 = Integer.parseInt(mr.getParameter("sabun") );
		String data2 = mr.getParameter("name");
		String data3 = mr.getParameter("title");
		int data4 = Integer.parseInt(mr.getParameter("pay") );
		String data5 = mr.getFilesystemName("upload") ;
		String data6 = mr.getParameter("ref") ;
		out.println("<font size=6><b>넘어온사번:" + data1 + "</b></font><br>") ;
		out.println("<font size=6><b>넘어온이름:" + data2 + "</b></font><br>") ;	
		out.println("<font size=6><b>넘어온제목:" + data3 + "</b></font><br>") ;	
		out.println("<font size=6><b>넘어온급여:" + data4 + "</b></font><br>") ;	
		out.println("<font size=6><b>넘어온파일:" + data5 + "</b></font><br>") ;	
		out.println("<font size=6><b>넘어온참조:" + data6 + "</b></font><p>") ;
	%> 
	
	<h1>
	 <a href="/WebBoard0429/filedown2.jsp?file_name=<%= data5 %>">
	 <img src="<%=request.getContextPath()%>/filesave/<%= data5 %>" height=70  width=200 border="0">	  
	 </a> 
	</h1>
	<hr color=blue><h1> 실제 경로 : <%=realPath%> </h1>
 </body>
</html>








