package com.Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.MovieDao;
import com.Db.DbConnection;
import com.Model.Movie;

/**
 * Servlet implementation class DisplayMovies
 */
@WebServlet("/DisplayMovies")
public class DisplayMovies extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayMovies() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    Connection con=DbConnection.getConnection();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		MovieDao movieDao = new MovieDao();

	    List<Movie> movies = movieDao.getAllMovies();
	    String Select_QUERY = "select poster from movies;";
	    
	    String imageFileName=null;
	    
	    Statement stmt =null;
	    
	    request.setAttribute("movies", movies);
	    RequestDispatcher dispatcher = request.getRequestDispatcher("dmovie.jsp");
	    dispatcher.forward(request, response);	
	    
		/*
		 * try { stmt = con.createStatement(); ResultSet rs =
		 * stmt.executeQuery(Select_QUERY);
		 * 
		 * while(rs.next()) { imageFileName=rs.getString("poster"); } } catch
		 * (SQLException e) { // TODO Auto-generated catch block e.printStackTrace(); }
		 */
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
