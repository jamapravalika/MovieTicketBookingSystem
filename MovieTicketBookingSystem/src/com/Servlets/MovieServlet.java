package com.Servlets;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.MovieDao;
import com.Model.Movie;


@WebServlet("/dmovie")
public class MovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieDao movieDao = new MovieDao();

	    List<Movie> movies = movieDao.getAllMovies();
	    
	    request.setAttribute("movies", movies);
	    RequestDispatcher dispatcher = request.getRequestDispatcher("dmovie.jsp");
	    dispatcher.forward(request, response);	
	}
}
