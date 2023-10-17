package com.Db;

import java.sql.*;

public class DbConnection {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/movieticket";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";

    public static Connection getConnection(){
    	Connection con = null;
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");// installing driver
            con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            System.out.println("Connection Successful.");
        } 
        catch (Exception e) {
			e.printStackTrace();
		}
        return con;
    }
}