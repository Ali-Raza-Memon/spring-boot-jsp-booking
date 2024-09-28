<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Bookings</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
</head>
<body>

<div class="container">
    <h1 class="p-3">Booking List</h1>

    <table class="table table-bordered">
        <tr>
            <th>Booking ID</th>
            <th>User</th>
            <th>Event</th>
            <th>Booking Date</th>
            <th>Ticket Count</th>
        </tr>

        <c:forEach var="booking" items="${bookings}">
            <tr>
                <td>${booking.id}</td>
                <td>${booking.user.name}</td>
                <td>${booking.event.name}</td>
                <td>${booking.bookingDate}</td>
                <td>${booking.ticketCount}</td>
            </tr>
        </c:forEach>
    </table>

    <a href="/addBooking" class="btn btn-primary">Add New Booking</a>
</div>

<script>
    window.onload = function() {
        var msg = "${message}";
        if (msg == "Save Success") {
            toastr["success"]("Booking saved successfully!");
        } else if (msg == "Save Failure") {
            toastr["error"]("Failed to save the booking.");
        }

        toastr.options = {
            "closeButton": true,
            "debug": false,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": false,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }
    }
</script>

</body>
</html>
