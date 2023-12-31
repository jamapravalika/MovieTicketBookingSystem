<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List" %>
<%@ page import="com.Model.Movie" %> 
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.Blob" %>
<%@ page import="java.io.InputStream" %>



<!doctype html>
<html lang="zxx">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Movies</title>
<link rel="stylesheet" href="assets/css/style-starter.css">
<link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap" rel="stylesheet">
</head>
<style>
.container{
	padding :0 5%;
}

nav{
	text-align: center;
	background-color: #333;
}
nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    display: inline-block;
    justify-content: center;
}

nav ul li {
    float: left;
    align: right;
    margin: 0 20px;
}

nav ul li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

nav ul li a:hover {
    background-color: #ddd;
    color: black;
}
</style>

<body>
	<!-- header -->
	<nav>
        <ul>
            <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
        	<li><a href="AddMovies.jsp"><i class="fa fa-film"></i> Movies</a></li>
        	<li><a href="UserTable.jsp"><i class="fa fa-users"></i> Users</a></li>
        	<li><a href="theater.jsp"><i class="fa fa-building"></i> Theaters</a></li>

        </ul>
      </nav>
	

   <h1>List of Movies</h1>
    <table border="1">
        <tr>
            <th>Movie Name</th>
            <th>Director</th>
            <th>Release Date</th>
            <th>Casts</th>
            <th>Description</th>
            <th>Duration</th>
            <th></th>
        </tr>
        
        <% List<Movie> movies = (List<Movie>) request.getAttribute("movies");
   if (movies != null) {
       for (Movie movie : movies) { %>
        <tr>
            <td><%= movie.getMovie_Name() %></td>
            <td><%= movie.getMovie_Director() %></td>
            <td><%= movie.getMovie_Release_Date() %></td>
            <td><%= movie.getMovie_Casts() %></td>
            <td><%= movie.getMovie_Description() %></td>
            <td><%= movie.getMovie_Duration() %></td>
            <td><a href="EditMovie.jsp">Edit</a> / <a href="">Delete</a></td>
        </tr>
    <% } 
   
       }%>
  
    </table>


	