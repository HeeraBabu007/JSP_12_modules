<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.*"%>
<%
   String id = "";
   String name = "";
   String address = "";
   String status = "";
   String q = request.getParameter("useroption");
   try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/selectdata", "root", "root");
        Statement smt = con.createStatement(); //Create Statement to interact
        ResultSet r = smt.executeQuery("select * from info where(status='" + q + "');");
        while (r.next()) {
           out.println(r.getString("name"));
           out.println(r.getString("address"));
           out.println(r.getString("status"));
           out.println(r.getString("id"));
           out.println("|||||||");
        }
        con.close();
   } catch (Exception e) {
        e.printStackTrace();
   }
%>
>