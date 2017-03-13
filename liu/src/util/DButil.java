package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DButil {
	private static DButil dbutil = new DButil();
	private static Connection conn = null;
	private DButil()
	{
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static DButil getDButil()
	{
		
		return dbutil;
	}
	public Connection getConnection()
	{
		try {
			 conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "142857");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
		
	}
	
	public void closeConnection(Connection conn)
	{
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
