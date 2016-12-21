<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>my jsp page</title>
</head>
<body>

<%@include file="header.jsp"%>
<!-- <a href="empform">Add Employee</a>
<a href="viewemp">View Employees</a> -->

<h1>Menu 1:go to new.jsp page for retrieve data from database</h1>

<form method="post" action="new.jsp">
 Enter name:<input type="text" name="user">
<input type="submit" value="send">
</form>

<h1>Menu 2: select option for other database</h1>
<a href='test.html'>go to option page</a>


<h1>Menu 3: select option for status: enable or disable</h1>
<a href='form.jsp'>go to option page</a>

<h1>Menu 4: select Employees Registration Form: EmployeesRegistrationForm</h1>
<a href='EmployeesRegistrationForm.jsp'>go to Employees Registration Form page</a>

<h1>Menu 5: single row retrieve</h1>
<a href='SingleRowDisplay.jsp'>go to page</a>

<h1>Menu 6: All rows retrieve</h1>
<a href='all_Rows_Display.jsp'>go to page</a>

<h1>Menu 7: Single_field_display</h1>
<a href='Single_field_display.jsp'>go to page</a>

<h1>Menu 8: Search_all_where Condition</h1>
<a href='Search_all_whereCondition.jsp'>go to page</a>

<h1>Menu 9: join Tables and then displaying data</h1>
<a href='joinTable_display_data.jsp'>go to page</a>

<h1>Menu 10: Create_Table in database_for_AdminPanel</h1>
<a href='Create_Table_for_AdminPage.jsp'>go to page</a>

<h1>Menu 11: insert_values_in_table</h1>
<a href='insert_values_in_table.jsp'>go to page</a>

<h2>Menu 12: Navigating Database Table With Javascript and JSP</h2>
<a href='Navigate_ Db_Table_With_Javascript.jsp'>go to page</a>

<h3>Navigation Based On Form</h3>
<a href='Navigation Based On Form.jsp'>go to page</a>
</body>
</html>