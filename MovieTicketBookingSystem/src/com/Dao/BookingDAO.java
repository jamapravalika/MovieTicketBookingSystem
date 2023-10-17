package com.Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.Db.DbConnection;

import com.Model.Bookings;


public class BookingDAO implements BookingDAOIntr {


	public void createBooking(Bookings book) {
		// TODO Auto-generated method stub
		Connection conn = DbConnection.getConnection();
		final String QUERY = "INSERT INTO BOOKINGS VALUES(?,?,?,?,?,?,?);";
		try {
			PreparedStatement pstmt = conn.prepareStatement(QUERY);
			
			pstmt.setDate(1, book.getBookingDate());
			pstmt.setInt(2, book.getUserId());
			pstmt.setString(3, book.getMovieName());
			pstmt.setString(4, book.getShowTime());
			pstmt.setFloat(5, book.getTotalPrice());
			pstmt.setTimestamp(6, book.getBookingDate());
			pstmt.setBoolean(7, book.isConfirmed());
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			System.out.println("Finally Block");
		}
		
	}

    @Override
    public void createBooking(int BookingId, int UserId, String MovieName, Time ShowTime, float TotalPrice, Date BookingDate) {
        Connection conn = DbConnection.getConnection();
        final String INSERT_QUERY = "INSERT INTO BOOKINGS (BOOKINGID, USERID, MOVIE_NAME, SHOWTIME, TOTAL_PRICE, BOOKING_DATE, CONFIRMED) VALUES (?, ?, ?, ?, ?, ?, ?);";


        try (PreparedStatement pstmt = conn.prepareStatement(INSERT_QUERY)) {
            pstmt.setInt(1, BookingId);
            pstmt.setInt(2, UserId);
            pstmt.setString(3, MovieName);
            pstmt.setTime(4, ShowTime);
            pstmt.setFloat(5, TotalPrice);
            pstmt.setTimestamp(6, new Timestamp(BookingDate.getTime()));
            pstmt.setBoolean(7, false); // Assuming confirmed is initially set to false

            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Booking created successfully");
            } else {
                System.out.println("Failed to create the booking");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            System.out.println("Finally Block");
        }
    }

	@Override
	public void createBooking(int BookingId, int UserId, String MovieName, String ShowTime, float TotalPrice,
			Date BookingDate) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void ShowBooking(int Booking_Id) {
		// TODO Auto-generated method stub
		
	}
    @Override
    public boolean confirmBooking(int Booking_Id) {
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
    public void deleteBooking(int Booking_Id) {
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

        try{
            Statement stmt=conn.createStatement();
            ResultSet result= stmt.executeQuery(QUERY);
            while (result.next()){
            	System.out.print(
                        result.getInt(1)+" "
                        +result.getInt(2)+" "
                        +result.getString(3)+" "
                        +result.getString(4)+" "
                        +result.getFloat(5)+" "
                        +result.getTimestamp(6)+" "
                        +result.getBoolean(7));
            }

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

            request.setAttribute("bookings", bookings); 
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            System.out.println("Finally Block");
        }

    }
        
}



