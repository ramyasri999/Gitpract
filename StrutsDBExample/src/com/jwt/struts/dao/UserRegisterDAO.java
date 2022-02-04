package com.jwt.struts.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class UserRegisterDAO
{
	public void insertData(String Userid, String userName,String password) throws Exception 
	{
		
		String temp_user = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "oracle");
		System.out.println("jdbc connection");
		try 
		{

			try 
			{
				
					Statement st = con.createStatement();
					System.out.println("Statment created");
					int value = st.executeUpdate("INSERT INTO USERS(USERID,USERNAME,PASSWORD) "
								+ "VALUES('"+ Userid + "','" + userName + "','" + password + "')");
					System.out.println("1 row affected" + value);
				
			}
			catch (SQLException ex) 
			{
				System.out.println("SQL statement is not executed!" + ex);
			}
			con.close();
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}
