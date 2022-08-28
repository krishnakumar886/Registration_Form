package com.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection createConnection() {
		Connection con = null;

		try {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "KRISHNA");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}