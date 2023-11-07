package com.Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.Db.DbConnection;
import com.Model.Bookings;

public class BookingDAO implements BookingDAOIntr {

	@Override
	public void CreateBooking(int BookingId, int UserId, String MovieName, Time ShowTime, float TotalPrice,
			Date BookingDate) {
	        Connection conn = DbConnection.getConnection();

	        // Define SQL queries to retrieve data from other tables
	        String getUserQuery = "SELECT UserId FROM users WHERE UserId = ?";
	        String getMovieQuery = "SELECT MovieName FROM movies WHERE MovieName = ?";
	        String getShowtimeQuery = "SELECT ShowTime FROM showtimes WHERE ShowTime = ?";

	        try (PreparedStatement getUserPstmt = conn.prepareStatement(getUserQuery);
	             PreparedStatement getMoviePstmt = conn.prepareStatement(getMovieQuery);
	             PreparedStatement getShowtimePstmt = conn.prepareStatement(getShowtimeQuery);
	             PreparedStatement insertBookingPstmt = conn.prepareStatement(
	                     "INSERT INTO BOOKINGS (USERID, MOVIE_NAME, SHOWTIME, TOTAL_PRICE, CONFIRMED) VALUES (?, ?, ?, ?, ?)");
	        ) {
	            getUserPstmt.setInt(1, UserId);
	            getMoviePstmt.setString(1, MovieName);
	            getShowtimePstmt.setTime(1, ShowTime);

	            ResultSet userResult = getUserPstmt.executeQuery();
	            ResultSet movieResult = getMoviePstmt.executeQuery();
	            ResultSet showtimeResult = getShowtimePstmt.executeQuery();

	            if (userResult.next() && movieResult.next() && showtimeResult.next()) {
	                insertBookingPstmt.setInt(1, UserId);
	                insertBookingPstmt.setString(2, MovieName);
	                insertBookingPstmt.setTime(3, ShowTime);
	                insertBookingPstmt.setFloat(4, TotalPrice);
	                insertBookingPstmt.setBoolean(5, false);

	                int rowsAffected = insertBookingPstmt.executeUpdate();
	                if (rowsAffected > 0) {
	                    System.out.println("Booking created successfully");
	                } else {
	                    System.out.println("Failed to create the booking");
	                }
	            } else {
	                System.out.println("User, movie, or showtime not found.");
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            System.out.println("Finally Block");
	        }
	   }
		

	@Override
	public boolean ConfirmBooking(int Booking_Id) {
		Connection conn = DbConnection.getConnection();
        final String UPDATE_QUERY = "UPDATE BOOKINGS SET CONFIRMED = ? WHERE BOOKINGID = ?;";
        try {
            PreparedStatement pstmt = conn.prepareStatement(UPDATE_QUERY);
            pstmt.setBoolean(1, true);
            pstmt.setInt(2, Booking_Id);

            int cnt = pstmt.executeUpdate();
            if (cnt != 0) {
                System.out.println("Confirmed Successfully !!!");
            }
            return cnt > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            System.out.println("Finally Block");
        }
		return false;
	}

	@Override
	public void DeleteBooking(int Booking_Id) {
		Connection conn = DbConnection.getConnection();
        final String QUERY = "DELETE FROM BOOKINGS WHERE BOOKINGID = ?;";
        try {
            PreparedStatement pstm = conn.prepareStatement(QUERY);
            pstm.setInt(1, Booking_Id);
            int cnt = pstm.executeUpdate();
            if (cnt != 0) {
                System.out.println("Deleted Successfully!!! " + Booking_Id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            System.out.println("Finally Block");
        }
	}

	@Override
	public void ShowBooking(HttpServletRequest request) {
		Connection conn = DbConnection.getConnection();
        final String QUERY = "SELECT * FROM BOOKINGS";

        try {
            Statement stmt = conn.createStatement();
            ResultSet result = stmt.executeQuery(QUERY);
            List<Bookings> bookings = new ArrayList<>();

            while (result.next()) {
                Bookings booking = new Bookings();
                booking.setBookingId(result.getInt(1));
                booking.setUserId(result.getInt(2));
                booking.setMovieName(result.getString(3));
                booking.setShowTime(result.getTime(4));
                booking.setTotalPrice(result.getFloat(5));
                booking.setBookingDate(result.getTimestamp(6));
                booking.setConfirmed(result.getBoolean(7));
                bookings.add(booking);
            }

            request.setAttribute("bookings", bookings); // Set the bookings as a request attribute
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            System.out.println("Finally Block");
        }
	}
}