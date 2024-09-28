<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Event</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
</head>
<body>

<div class="container">
    <h1 class="p-3">Add New Event</h1>

    <form:form action="/saveEvent" modelAttribute="event" method="post">
        <div class="row">
            <div class="form-group col-md-12">
                <label for="name">Event Name</label>
                <div class="col-md-6">
                    <form:input path="name" id="name" class="form-control" required="required" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label for="date">Event Date</label>
                <div class="col-md-6">
                    <form:input path="date" id="date" type="date" class="form-control" required="required" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label for="location">Location</label>
                <div class="col-md-6">
                    <form:input path="location" id="location" class="form-control" required="required" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label for="description">Description</label>
                <div class="col-md-6">
                    <form:textarea path="description" id="description" class="form-control"></form:textarea>
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
            toastr["error"]("Event could not be saved. Please try again.");
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
