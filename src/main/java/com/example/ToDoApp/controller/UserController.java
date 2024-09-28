package com.example.ToDoApp.controller;

import com.example.ToDoApp.model.User;
import com.example.ToDoApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping({"/", "Index"})
    public String home() {
        return "Index";
    }

    @GetMapping("/users")
    public String viewAllUsers(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "ViewUsers";
    }

    @GetMapping("/addUser")
    public String addUserForm(Model model) {
        model.addAttribute("user", new User());
        return "AddUser";
    }

    @PostMapping("/saveUser")
    public String saveUser(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/users";
    }

    @GetMapping("/editUser/{id}")
    public String editUser(@PathVariable Long id, Model model) {
        model.addAttribute("user", userService.getUserById(id));
        return "EditUser";
    }

    @PostMapping("/editSaveUser")
    public String editSaveUser(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/users";
    }

    @GetMapping("/deleteUser/{id}")
    public String deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
        return "redirect:/users";
    }
}
