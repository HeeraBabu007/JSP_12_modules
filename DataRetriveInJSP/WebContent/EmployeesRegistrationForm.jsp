<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="RegistrationProcess.jsp">  
<input type="text" name="name" value="Name..." onclick="this.value=''"/><br/>  
<input type="text" name="address" value="Address..." onclick="this.value=''"/><br/>  
<input type="text" name="email"  value="Email ID..." onclick="this.value=''"/><br/>  
<input type="password" name="pass"  value="Password..." onclick="this.value=''"/><br/>
<input type="submit" value="register"/>  
</form>

</body>
</html>