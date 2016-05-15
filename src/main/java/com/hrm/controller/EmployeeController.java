package com.hrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hrm.domain.Address;
import com.hrm.domain.Employee;
import com.hrm.repository.EmployeeRepository;
import com.hrm.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@RequestMapping(value = "/")
	public String homePage() {
		return "homePage";
	}

	@RequestMapping(value = "/addEmployee", method = RequestMethod.GET)
	public String getAddEmployee() {
		return "addEmployee";
	}

	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public String saveEmployee(@RequestParam("street") String street, @RequestParam("city") String city,
			@RequestParam("state") String state, @RequestParam("zip") int zip, @RequestParam("country") String country,
			@ModelAttribute("employee") Employee employee) {

		Address address = new Address(street, city, state, zip, country);
		employee.setAddress(address);
		employeeService.saveEmployee(employee);
		return "redirect:/employeeList";

	}

	@RequestMapping(value = "/employeeList", method = RequestMethod.GET)
	public String getEmployeeList(Model model) {
		List<Employee> emp=employeeService.displayEmployeeList();
		model.addAttribute("employee", emp);
		return "employeeList";
	}

}
