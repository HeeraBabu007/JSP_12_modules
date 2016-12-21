<%@page import="com.dao.RegisterDao"%>  
<jsp:useBean id="obj" class="com.model.Employee"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
out.print("You are registering...");  
int status=RegisterDao.register(obj);  
if(status>0)  
out.print("You are successfully registered");  
  
%>  