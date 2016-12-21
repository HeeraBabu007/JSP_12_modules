<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<HTML>
    <HEAD>
        <TITLE>Navigating in a Database Table </TITLE>
    </HEAD>

    <BODY>
        <H1>Navigating in a Database Table </H1>
        <FORM NAME="form1" ACTION="basic.jsp" METHOD="POST">

        <% 
            int current = 1;
            if(request.getParameter("hidden") != null) {
                current = Integer.parseInt(request.getParameter("hidden"));
            }

            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/selectdata", "root", "root");
            Statement statement = connection.createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);

            ResultSet resultset = statement.executeQuery("select * from info"); 

            if(current < 1){
                current = 1;
            }

            resultset.last();
            int rows = resultset.getRow();
            if(current <= rows){
                resultset.absolute(current);
            }    
        %>

            <TABLE BORDER="1">
                <TR>
               <TH>ID</TH>
               <TH>Name</TH>
               <TH>Address</TH>
               <TH>Status</TH>
           </TR>
           <TR>
               <TD> <%= resultset.getInt(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getString(4) %> </TD>
           </TR>
            </TABLE>
            <BR>
            <INPUT TYPE="HIDDEN" NAME="hidden" VALUE="<%= current %>">
            <INPUT TYPE="BUTTON" VALUE="Next Record" ONCLICK="moveNext()">
            <INPUT TYPE="BUTTON" VALUE="Previous Record" ONCLICK="movePrevious()">
        </FORM>

        <SCRIPT LANGUAGE="JavaScript">
            <!--
            function moveNext()
            {
                var counter = 0
                counter = parseInt(document.form1.hidden.value) + 1
                document.form1.hidden.value = counter
                form1.submit()
            }    
            function movePrevious()
            {
                var counter = 0
                counter = parseInt(document.form1.hidden.value) - 1
                document.form1.hidden.value = counter
                form1.submit()
            }    
             --> 
         
        </SCRIPT>
    </BODY>
</HTML>