package com.example.ToDoApp.restController;

import com.example.ToDoApp.model.Event;
import com.example.ToDoApp.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/events")
public class EventRestController {

    @Autowired
    private EventService eventService;

    @GetMapping("/all")
    public List<Event> getAllEvents() {
        return eventService.getAllEvents();
    }

    @GetMapping("/get/{id}")
    public Event getEventById(@PathVariable Long id) {
        return eventService.getEventById(id);
    }


    @DeleteMapping("/delete/{id}")
    public void deleteEvent(@PathVariable Long id) {
        eventService.deleteEvent(id);
    }

}
