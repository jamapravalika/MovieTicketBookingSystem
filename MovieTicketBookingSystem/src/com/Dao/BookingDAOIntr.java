package com.Dao;

import java.sql.Date;

import java.sql.Time;

import javax.servlet.http.HttpServletRequest;


public interface BookingDAOIntr {
	
	//Create booking
	public void CreateBooking(int BookingId, int UserId, String MovieName, Time ShowTime, float TotalPrice, Date BookingDate);
	//Confirm Booking
	public boolean ConfirmBooking(int Booking_Id);
	//Delete Bookings
	public void DeleteBooking(int Booking_Id);
	//Show Bookings
	public void ShowBooking(HttpServletRequest request);
}