<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User-Event-Booking App Dashboard</title>

    <!-- Bootstrap CSS for better UI -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Custom CSS for styling the dashboard -->
    <style>
        body {
            background-color: #f7f7f7;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            transition: transform 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        h1 {
            margin-bottom: 30px;
        }

        .btn {
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center">User Event Booking App</h1>

    <div class="row">

        <!-- Add Booking Button -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title">Add Booking</h5>
                    <p class="card-text">Create a new booking for an event.</p>
                    <a href="addBooking" class="btn btn-success">Go to Add Booking</a>
                </div>
            </div>
        </div>

        <!-- View Bookings Button -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title">View Bookings</h5>
                    <p class="card-text">See all current bookings.</p>
                    <a href="bookings" class="btn btn-primary">Go to View Bookings</a>
                </div>
            </div>
        </div>

        <!-- Add Event Button -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title">Add Event</h5>
                    <p class="card-text">Create a new event for users to book.</p>
                    <a href="addEvent" class="btn btn-warning">Go to Add Event</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">

        <!-- View Events Button -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title">View Events</h5>
                    <p class="card-text">See all available events.</p>
                    <a href="events" class="btn btn-info">Go to View Events</a>
                </div>
            </div>
        </div>

        <!-- Add User Button -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title">Add User</h5>
                    <p class="card-text">Register a new user to the system.</p>
                    <a href="addUser" class="btn btn-secondary">Go to Add User</a>
                </div>
            </div>
        </div>

        <!-- View Users Button -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title">View Users</h5>
                    <p class="card-text">See all registered users.</p>
                    <a href="users" class="btn btn-dark">Go to View Users</a>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
