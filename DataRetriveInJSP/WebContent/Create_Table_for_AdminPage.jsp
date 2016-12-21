<%@ page import="java.sql.*" %>

<HTML>
    <HEAD>
        <TITLE>Creating a Table</TITLE>
    </HEAD>

    <BODY>
        <H1>Creating a Table</H1>

        <%  
            try {
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/swati", "root", "root");
                Statement smt = con.createStatement(); //Create Statement to interact
           		String query="create table myemployees(ID int, name char(50), salary int)";
                int r = smt.executeUpdate(query);
               if (r>0)
                out.println("The Employees table was created..");

                
            } catch (Exception e) {
                out.println("An error occurred.");
            }
        %>

    </BODY>
</HTML>