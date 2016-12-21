<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.*"%>
<%@include file="header.jsp"%>
<%
   String name = "";
   String q = request.getParameter("q");
   try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaquery", "root", "root");
        Statement smt = con.createStatement(); //Create Statement to interact
        ResultSet r = smt.executeQuery("select * from users where(AccountID='" + q + "');");
        while (r.next()) 
        {
             name = r.getString("name");
        }
        con.close();
   } 
   catch (Exception e) 
   {
        e.printStackTrace();
   }
%>

Name:<%out.print(name);%> 
Output: jquery, ajax