package com.maybank.todo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.maybank.todo.domain.Todo;
import com.maybank.todo.service.TodoService;


@Controller
public class TodoController {
 
    @Autowired
    private TodoService service;
     
    @RequestMapping("/list-all")
    public String viewHomePage(Model model, @Param("keyword") String keyword) {
        List<Todo> listTodos = service.listAll(keyword);
        model.addAttribute("listTodos", listTodos);
        model.addAttribute("keyword", keyword);
         
        return "listAll";
    }
    
    @RequestMapping("/new")
    public String newTodo(Model model) {
        Todo todo = new Todo();
        model.addAttribute("todo", todo);
        return "new_todo";
    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveTodo(@ModelAttribute("todo") Todo todo) {
        service.save(todo);
        return "redirect:/list-all";
    }
    
    @RequestMapping("/edit/{id}")
    public ModelAndView editTodo(@PathVariable(name = "id") int id) {
        ModelAndView mav = new ModelAndView("edit_todo");
        Todo todo = service.get(id);
        mav.addObject("todo", todo);
        return mav;
    }
    
    @RequestMapping("/delete/{id}")
    public String deleteTodo(@PathVariable(name = "id") int id) {
        service.delete(id);
        return "redirect:/list-all";       
    }
}

