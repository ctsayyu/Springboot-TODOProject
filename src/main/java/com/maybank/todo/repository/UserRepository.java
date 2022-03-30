package com.maybank.todo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.maybank.todo.domain.User;


@Repository
public interface UserRepository extends JpaRepository<User, Long>{
 User findByEmail(String email);
}
