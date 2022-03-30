package com.maybank.todo.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
 
@Entity
@Data
@AllArgsConstructor
public class Todo {
    private Long id;
    private String user;
    private String description;
    private String targetdate;
    private float starmeter;
 
    public Todo() {
    }
 
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }
     
    // other getters and setters are hidden for brevity
}


