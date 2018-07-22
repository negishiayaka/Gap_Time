package com.internousdev.gap_time.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {

	private static String driverName = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost/gap_time";
	private static String user = "root";
	private static String password = "mysql";

	public static Connection getConnection(){

		Connection connection = null;

		try{
			Class.forName(driverName);
			connection = DriverManager.getConnection(url, user, password);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}

		return connection;
	}

}
