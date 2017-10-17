/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.template1.todo;

/**
 *
 * @author trevorbrown
 */
import com.template1.model.Todo;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.template1.service.TodoService;
import javax.validation.Valid;
import org.springframework.validation.BindingResult;

@Controller
@SessionAttributes("name")
public class TodoController {

    @Autowired
    private TodoService service;

    @RequestMapping(value = "/list-todos", method = RequestMethod.GET)
    public String showTodosList(ModelMap model) {
        String user = (String) model.get("name");
        model.addAttribute("todos", service.retrieveTodos(user));
        return "list-todos";
    }

    @RequestMapping(value = "/add-todo", method = RequestMethod.GET)
    public String showTodoPage(ModelMap model) {
        model.addAttribute("todo", new Todo(0, "trev", "", new Date(), false));
        return "todo";
    }

    @RequestMapping(value = "/add-todo", method = RequestMethod.POST)
    public String addTodo(ModelMap model, @Valid Todo todo, BindingResult result) {
        if (result.hasErrors()) {
            return "todo";
        }
        service.addTodo((String) model.get("name"), todo.getDesc(), new Date(), false);
        model.clear();// to prevent request parameter "name" to be passed
        return "redirect:/list-todos";
    }

    @RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
    public String deleteTodo(ModelMap model, @RequestParam int id) {
        service.deleteTodo(id);
        model.clear();
        return "redirect:/list-todos";
    }

}
