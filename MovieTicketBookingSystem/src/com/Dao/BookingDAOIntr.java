package com.Dao;

import java.sql.Date;
import java.sql.Time;

import javax.servlet.http.HttpServletRequest;

import com.Model.Bookings;

public interface BookingDAOIntr {
	
	//Create booking
<<<<<<< HEAD

	public void createBooking(Bookings book);

	public void createBooking(int BookingId, int UserId, String MovieName, String ShowTime, float TotalPrice, Date BookingDate);
=======
	public void createBooking(int BookingId, int UserId, String MovieName, Time ShowTime, float TotalPrice, Date BookingDate);
>>>>>>> branch 'main' of https://github.com/jamapravalika/MovieTicket.git
	//Confirm Booking
	public boolean confirmBooking(int Booking_Id);
	//Delete Bookings
	public void deleteBooking(int Booking_Id);
	//Show Bookings
	public void ShowBooking(int Booking_Id);

	public void ShowBooking(HttpServletRequest request);
}
