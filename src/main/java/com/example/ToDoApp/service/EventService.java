package com.example.ToDoApp.service;

import com.example.ToDoApp.model.Event;
import com.example.ToDoApp.repo.EventRepository;
import com.example.ToDoApp.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventService {

    @Autowired
    private EventRepository eventRepository;


    public List<Event> getAllEvents() {
        return eventRepository.findAll();
    }


    public Event getEventById(Long id) {
        return eventRepository.findById(id).orElse(null);
    }


    public Event saveEvent(Event event) {
        return eventRepository.save(event);
    }


    public void deleteEvent(Long id) {
        eventRepository.deleteById(id);
    }
}
