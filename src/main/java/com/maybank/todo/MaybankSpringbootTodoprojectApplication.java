package com.maybank.todo;

import java.io.FileNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.maybank.todo.service.ReportService;

import net.sf.jasperreports.engine.JRException;

@SpringBootApplication
@RestController
public class MaybankSpringbootTodoprojectApplication {

	@Autowired
	private ReportService service;

	
	public static void main(String[] args) {
		SpringApplication.run(MaybankSpringbootTodoprojectApplication.class, args);
	}
	
	@GetMapping("/report/{format}")
	public String generateReport(@PathVariable String format) throws FileNotFoundException, JRException {
		return service.exportReport(format);
	}

}
