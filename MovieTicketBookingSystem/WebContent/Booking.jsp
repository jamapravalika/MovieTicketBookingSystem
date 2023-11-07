<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.Model.Bookings" %>
 <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booked Movie Tickets</title>
</head>
<body>
<%@ include file="Header.jsp" %>
    <h1>Booked Movie Tickets</h1>
    
    <table border="1">
        <tr>
            <th>Booking ID</th>
            <th>User ID</th>
            <th>Movie Name</th>
            <th>Show Time</th>
            <th>Total Price</th>
            <th>Booking Date</th>
            <th>Confirmed</th>
        </tr>

        <%
            // Retrieve the bookings attribute set in the servlet
            List<Bookings> bookings = (List<Bookings>) request.getAttribute("bookings");
            if (bookings != null && !bookings.isEmpty()) {
                for (Bookings booking : bookings) {
        %>
                <tr>
                    <td><%= booking.getBookingId() %></td>
                    <td><%= booking.getUserId() %></td>
                    <td><%= booking.getMovieName() %></td>
                    <td><%= booking.getShowTime() %></td>
                    <td><%= booking.getTotalPrice() %></td>
                    <td><%= booking.getBookingDate() %></td>
                    <td><%= booking.isConfirmed() %></td>
                </tr>
        <%
                }
            } else {
        %>
                <tr>
                    <td colspan="7">No bookings found.</td>
                </tr>
        <%
            }
        %>
    </table>
   <%@ include file="footer.html" %>
</body>
</html>