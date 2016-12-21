<%@ page import="java.sql.*" %>
<HTML>
    <HEAD>
        <TITLE>Filling a Table</TITLE>
    </HEAD>

    <BODY>
        <H1>Filling a Table</H1>

        <%  
            Connection connection = null;
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/selectdata", "root", "root");
            Statement statement = connection.createStatement();

            String command = "INSERT INTO myemployees (ID, Name, salary) VALUES (100, 'swatii', 2900)";
            statement.executeUpdate(command);

            command = "INSERT INTO myemployees (ID, Name, salary) VALUES (2, 'Peter', 20000)";
            statement.executeUpdate(command);

            ResultSet resultset = statement.executeQuery("select * from myemployees");

            while(resultset.next()){ 
        %>
            <TABLE BORDER="1">
                <TR>
                    <TH>ID</TH>
                    <TH>Name</TH>
                    <TH>Salary</TH>
                </TR>
                <TR>
                    <TD> <%= resultset.getString(1) %> </TD>
                    <TD> <%= resultset.getString(2) %> </TD>
                    <TD> <%= resultset.getString(3) %> </TD>
                </TR>
            </TABLE>
        <% 
            } 
        %>
    </BODY>
</HTML>