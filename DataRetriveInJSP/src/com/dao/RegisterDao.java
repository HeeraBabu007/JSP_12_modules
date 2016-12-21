package com.dao;

import java.sql.*;
import com.model.Employee;
import com.services.ConnectionProvider;

public class RegisterDao 
{

	public static int register(Employee e)
	{  
		int status=0;  
		try
		{  
			System.out.println("register method calling...");
			Connection con=ConnectionProvider.getCon();  
		    PreparedStatement ps=con.prepareStatement("insert into EmployeeRecord values(?,?,?,?)");  
		    ps.setString(1, e.getName());  
		    ps.setString(2, e.getAddress());  
		    ps.setString(3, e.getEmail());
		    ps.setString(4, e.getPass());
			System.out.println("register method calling...ends");
		              
		status=ps.executeUpdate();  
		}catch(Exception e1){}  
		      
		return status;  
}
}
