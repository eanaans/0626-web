<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html><head> <title> [fileSelect2.jsp] </title>
  <style type="text/css">
    input,b {font-size:16pt ; font-weight:bold; }
	a {text-decoration:none ;  font-size:14pt ;  font-weight:bold; }
	a:hover {text-decoration:underline;  font-size:22pt ; font-family:Comic Sans MS;  }    
  </style>
</head>
<font size=7 color=blue> [fileSelect2.jsp] </font><p>
  
<form method="post" enctype="multipart/form-data" action="fileUpload2.jsp">
	<b>���</b> <input type="text" name="sabun" value="7789"> <br>
	<b>�̸�</b> <input type="text" name="name" value="bc"> <br>
	<b>����</b> <input type="text" name="title"  value="card"> <br>
    <b>�޿�</b> <input type="text" name="pay"  value="94"> <br>
	<b>����</b> <input type="file" name="upload"> <br>
	           <input type="hidden" name="ref" value="300"> <br>
	
	<input type="submit" value="����"> &nbsp;&nbsp;&nbsp;
	<input type="reset" value="���">
</form>
    
    
    
    