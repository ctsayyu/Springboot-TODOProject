package com.maybank.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.maybank.todo.domain.Todo;
import com.maybank.todo.repository.TodoRepository;

 
@Service
@Transactional
public class TodoService {
 
    @Autowired
    private TodoRepository repo;
     
    public List<Todo> listAll(String keyword) {
        if (keyword != null) {
            return repo.search(keyword);
        }
        return repo.findAll();
    }
     
    public void save(Todo todo) {
        repo.save(todo);
    }
     
    public Todo get(long id) {
        return repo.findById(id).get();
    }
     
    public void delete(long id) {
        repo.deleteById(id);
    }
}
