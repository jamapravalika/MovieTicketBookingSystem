package com.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.Db.DbConnection;
import com.Model.ShowTimes;

public class ShowTimeDAO implements ShowTimeDAOIntr{

	@Override
	public void DisplayShowTime(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Connection conn = DbConnection.getConnection();
        final String QUERY = "SELECT * FROM SHOWTIME";

        try {
            Statement stmt = conn.createStatement();
            ResultSet result = stmt.executeQuery(QUERY);
            List<ShowTimes> showtimes = new ArrayList<>();

            while (result.next()) {
                ShowTimes showtime = new ShowTimes();
                showtime.setShowtime_Id(result.getInt(1));
                showtime.setStart_Time(result.getString(2));
                showtime.setEnd_Time(result.getString(3));
                showtimes.add(showtime);
            }

            request.setAttribute("showtimes", showtimes); // Set the bookings as a request attribute
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            System.out.println("Finally Block");
        }
	}

}
