<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String  pageFile=request.getParameter("page") ;	
	if(pageFile == null || pageFile == ""){
		pageFile = "./main2";
	}else if(pageFile.equals("writeForm2")){
		pageFile = "./board2/writeForm2";
	}else if(pageFile.equals("list2")){
		pageFile = "./board2/list2";
	}
%>

<html>
<head>
  <style type="text/css">
	a {  text-decoration:none ;  font-size:14pt ; font-family:Comic Sans MS; }
	a:hover {  text-decoration:underline;  font-size:22pt ; font-family:Comic Sans MS  }    
  </style>
</head>
<body>
	<table width="100%"  border=1  color=gray  align="">
		<tr>
			<td height="40"  colspan=3  align="left">
				<jsp:include page="top2.jsp" /> 
			</td>
		</tr>
	
		<tr>
			<td width="10%"  valign="top"><br>
				<jsp:include page="left2.jsp" /> 
			</td>
			<td colspan=2   align="center" ><br>
				<jsp:include page='<%= pageFile+".jsp" %>' /> 
			</td>
		</tr>
	
		<tr>
			<td width="100%"  height="35"  colspan=3  align="left">
				<jsp:include page="bottom2.jsp" /> 
			</td>
		</tr>
	</table>
</body>
</html>

