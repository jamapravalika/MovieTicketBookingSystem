package com.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.Db.DbConnection;
import com.Model.Theater;

public class TheaterDAO implements TheaterDAOIntr {

	@Override
	public void DisplayTheater(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Connection conn = DbConnection.getConnection();
        final String QUERY = "SELECT * FROM THEATER";

        try {
            Statement stmt = conn.createStatement();
            ResultSet result = stmt.executeQuery(QUERY);
            List<Theater> theaters = new ArrayList<>();

            while (result.next()) {
                Theater theater = new Theater();
                theater.setTheater_Id(result.getInt(1));
                theater.setTheater_Name(result.getString(2));
                theater.setAddress(result.getString(3));
		theater.setCapacity(result.getString(4));
                theaters.add(theater);
            }

            request.setAttribute("theaters", theaters);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            System.out.println("Finally Block");
        }
	}
		
}

