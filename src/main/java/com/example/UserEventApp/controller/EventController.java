package com.example.UserEventApp.controller;

import com.example.UserEventApp.model.Event;
import com.example.UserEventApp.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EventController {
    @Autowired
    private EventService eventService;

    @GetMapping("/events")
    public String viewAllEvents(Model model) {
        model.addAttribute("events", eventService.getAllEvents());
        return "ViewEvents";
    }

    @GetMapping("/addEvent")
    public String addEventForm(Model model) {
        model.addAttribute("event", new Event());
        return "AddEvent";
    }

    @PostMapping("/saveEvent")
    public String saveEvent(@ModelAttribute("event") Event event) {
        eventService.saveEvent(event);
        return "redirect:/events";
    }

    @GetMapping("/editEvent/{id}")
    public String editEvent(@PathVariable Long id, Model model) {
        model.addAttribute("event", eventService.getEventById(id));
        return "EditEvent";
    }

    @PostMapping("/editSaveEvent")
    public String editSaveEvent(@ModelAttribute("event") Event event) {
        eventService.saveEvent(event);
        return "redirect:/events";
    }

    @GetMapping("/deleteEvent/{id}")
    public String deleteEvent(@PathVariable Long id) {
        eventService.deleteEvent(id);
        return "redirect:/events";
    }
}

