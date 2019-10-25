package com.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetConnection {
	public static java.sql.Connection getConn() {
		//注册驱动
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//获得链接
			String url = "jdbc:mysql://127.0.0.1/student";
			String username = "root";
			String password = "123456";
			try {
				Connection conn = DriverManager.getConnection(url, username, password);
				return conn;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
	}

}
