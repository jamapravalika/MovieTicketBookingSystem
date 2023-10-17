package com.Model;

public class Seats {
	private int Seat_Id;
	private int Movie_Id;
	private int Seat_Number;
	private float price;
    private boolean isBooked;

	public Seats() {
		super();
	}
	public Seats(int seat_Id, int movie_Id, int seat_Number, float price, boolean isBooked) {
		super();
		Seat_Id = seat_Id;
		Movie_Id = movie_Id;
		Seat_Number = seat_Number;
		this.price = price;
		this.isBooked = isBooked;
	}
	public int getSeat_Id() {
		return Seat_Id;
	}
	public void setSeat_Id(int seat_Id) {
		Seat_Id = seat_Id;
	}
	public int getMovie_Id() {
		return Movie_Id;
	}
	public void setMovie_Id(int movie_Id) {
		Movie_Id = movie_Id;
	}
	public int getSeat_Number() {
		return Seat_Number;
	}
	public void setSeat_Number(int seat_Number) {
		Seat_Number = seat_Number;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public boolean isBooked() {
		return isBooked;
	}
	public void setBooked(boolean isBooked) {
		this.isBooked = isBooked;
	}
	@Override
	public String toString() {
		return "Seats [Seat_Id=" + Seat_Id + ", Movie_Id=" + Movie_Id + ", Seat_Number=" + Seat_Number + ", price="
				+ price + ", isBooked=" + isBooked + "]";
	}
	
}
