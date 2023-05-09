package com.db;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Dbconnect {
	
	
	
	private static Connection con;
	public static Connection getconnect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","root");
			

			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return con;
		
	}

}
