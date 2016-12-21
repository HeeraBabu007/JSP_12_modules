<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<HTML>
    <HEAD>
        <TITLE>The Publishers Database Table </TITLE>
    </HEAD>

    <BODY>
        <H1>The Publishers Database Table </H1>

        <% 
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/selectdata", "root", "root");
        Statement statement= connection.createStatement();  
        ResultSet resultset = statement.executeQuery("select * from info") ; 
        %>

        <TABLE BORDER="1">
            <TR>
               <TH>ID</TH>
               <TH>Name</TH>
               <TH>Address</TH>
               <TH>Status</TH>
           </TR>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getInt(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getString(4) %> </TD>
           </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>