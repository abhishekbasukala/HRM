package com.hrm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hrm.domain.Employee;
import com.hrm.service.EmployeeService;

@Controller
public class LoginController {
	
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public String getLogin(Model model){
		return "LogInPage";
	}
	
	@RequestMapping(value = "/loginpage", method = RequestMethod.POST)
	public String checkLogin(Model model,@ModelAttribute("employee") Employee employee){
		
		System.out.println(employee.getEmail());
		
		Employee emp=employeeService.checkLoginInfo(employee);
		System.out.println(emp.getDepartment().getDesignation());
		model.addAttribute("employee",emp);
		if(emp.getDepartment().getDesignation().toString()=="HR"){
			return "redirect:/homePage";
		}
		
		return "redirect:/employeeList";
		
	}
	

}
