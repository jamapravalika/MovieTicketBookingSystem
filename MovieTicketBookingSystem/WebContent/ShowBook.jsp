<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.Model.ShowTimes" %>
<%@ page import="com.Model.Theater" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Book</title>
</head>
<body>
<%@ include file="Header.jsp" %>
    <h1>Show Times</h1>
    <table border="1">
        <tr>
            <th>ShowTime ID</th>
            <th>Start Time</th>
            <th>End Time</th>
        </tr>
        <%
            // Get the showtimes list from the request
            List<ShowTimes> showtimes = (List<ShowTimes>) request.getAttribute("showtimes");

            // Check if the showtimes list is not empty
            if (showtimes != null && !showtimes.isEmpty()) {
                for (ShowTimes showtime : showtimes) {
        %>
        <tr>
            <td><%= showtime.getShowtime_Id() %></td>
            <td><%= showtime.getStart_Time() %></td>
            <td><%= showtime.getEnd_Time() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="3">No Show Times Available</td>
        </tr>
        <%
            }
        %>
    </table>
    <h1>Theater</h1>
    <table border="1">
        <tr>
            <th>Theater ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Capacity</th>
        </tr>
        <%
            // Get the showtimes list from the request
            List<Theater> theaters = (List<Theater>) request.getAttribute("theaters");

            // Check if the showtimes list is not empty
            if (theaters != null && !theaters.isEmpty()) {
                for (Theater theater : theaters) {
        %>
        <tr>
            <td><%= theater.getTheater_Id() %></td>
            <td><%= theater.getTheater_Name() %></td>
            <td><%= theater.getAddress() %></td>
            <td><%= theater.getCapacity() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="3">No Theater Available</td>
        </tr>
        <%
            }
        %>
    </table>
<%@ include file="footer.html" %>

</body>
</html>