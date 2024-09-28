<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Booking</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
</head>
<body>

<div class="container">
    <h1 class="p-3">Add New Booking</h1>

    <!-- Corrected form binding -->
    <form:form action="/saveBooking" modelAttribute="booking" method="post">

        <div class="row">
            <div class="form-group col-md-12">
                <label for="user">Select User</label>
                <div class="col-md-6">
                    <form:select path="user.id" class="form-control">
                        <c:forEach var="user" items="${users}">
                            <form:option value="${user.id}" label="${user.name}"/>
                        </c:forEach>
                    </form:select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label for="event">Select Event</label>
                <div class="col-md-6">
                    <form:select path="event.id" class="form-control">
                        <c:forEach var="event" items="${events}">
                            <form:option value="${event.id}" label="${event.name}"/>
                        </c:forEach>
                    </form:select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label for="bookingDate">Booking Date</label>
                <div class="col-md-6">
                    <form:input path="bookingDate" id="bookingDate" type="date" class="form-control" required="required" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label for="ticketCount">Ticket Count</label>
                <div class="col-md-6">
                    <form:input path="ticketCount" id="ticketCount" type="number" class="form-control" required="required" />
                </div>
            </div>
        </div>

        <div class="row p-2">
            <div class="col-md-2">
                <button type="submit" class="btn btn-success">Save</button>
            </div>
        </div>

    </form:form>
</div>

<script>
    window.onload = function() {
        var msg = "${message}";
        if (msg == "Save Failure") {
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
        };
    };
</script>

</body>
</html>
