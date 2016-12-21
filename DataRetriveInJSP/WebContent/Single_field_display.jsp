<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<HTML>
    <HEAD>
        <TITLE>Accessing the Publishers Database Table</TITLE>
    </HEAD>

    <BODY>
        <H1>Accessing the Publishers Database Table</H1>

        <% 
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/selectdata", "root", "root");                
        Statement statement = connection.createStatement() ;

              ResultSet resultset = statement.executeQuery("select name from info") ;
                
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>Name</TH>
            </TR>
            <% while(resultset.next()){ %>
                <TR>
                    <TD> 
                        <%= resultset.getString(1)%>  
                    </TD>
                </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>