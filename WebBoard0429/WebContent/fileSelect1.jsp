<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head> <title> [fileSelect1.jsp] </title> 
	<style type="text/css">
		b,input { font-size:20pt; font-weight:bold; }
	    a {font-size:16pt; font-weight:bold;  text-decoration:none ; }
		a:hover {font-size:32pt; font-weight:bold;  text-decoration:underline; color:red;  }    
	</style>
</head> 
<body>
  <font size=7 color=blue><b> [fileSelect1.jsp] </b></font> <p>  
  <form name="myform" method="post"  enctype="multipart/form-data"  action="fileUpload1.jsp">
  	<b>���:</b> <input type="text" name="sabun" value="2234"><br>
  	<b>�̸�:</b> <input type="text"  name="name"  value="snow" ><br>
  	<b>����:</b> <input type="file"  name="file1" ><br>
                 <input type="hidden"  name="ref" value="78"><p>
    <input type="submit"  value="���Ͼ��ε�"> &nbsp;
    <input type="reset"   value="����Ÿ ���" >
  </form>
</body>
</html>





