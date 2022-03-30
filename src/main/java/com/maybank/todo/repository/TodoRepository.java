package com.maybank.todo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.maybank.todo.domain.Todo;

public interface TodoRepository extends JpaRepository<Todo, Long> {
	@Query("SELECT t FROM Todo t WHERE t.user LIKE %?1%"
            + " OR t.description LIKE %?1%"
            + " OR t.targetdate LIKE %?1%"
            + " OR CONCAT(t.starmeter, '') LIKE %?1%")
	
    public List<Todo> search(String keyword);
	
}
