package com.example.ToDoApp.controller;

import com.example.ToDoApp.model.Booking;
import com.example.ToDoApp.model.Event;
import com.example.ToDoApp.model.User;
import com.example.ToDoApp.service.BookingService;
import com.example.ToDoApp.service.EventService;
import com.example.ToDoApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class BookingController {
    @Autowired
    private BookingService bookingService;

    @Autowired
    private EventService eventService;

    @Autowired
    private UserService userService;

    @GetMapping("/bookings")
    public String viewAllBookings(Model model) {
        model.addAttribute("bookings", bookingService.getAllBookings());
        return "ViewBookings";
    }

    @GetMapping("/addBooking")
    public String addBookingForm(Model model) {
        model.addAttribute("booking", new Booking());
        model.addAttribute("users", userService.getAllUsers());
        model.addAttribute("events", eventService.getAllEvents());
        return "AddBooking";
    }

    @PostMapping("/saveBooking")
    public String saveBooking(@ModelAttribute("booking") Booking booking) {
        bookingService.saveBooking(booking);
        return "redirect:/bookings";
    }
}
