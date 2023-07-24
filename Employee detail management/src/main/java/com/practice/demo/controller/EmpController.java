package com.practice.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.practice.demo.pojo.Employee;
import com.practice.demo.repo.Repository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/app")
public class EmpController {
	
	@Autowired
	Repository repo;
	
	//-----------Send Home Page with all employees------------
	
	@GetMapping(value={"/home"})
	public ModelAndView home() {
		ModelAndView mv= new ModelAndView();
		List <Employee> allEmps = (List<Employee>) repo.findAll();
		mv.setViewName("home");
		mv.addObject("allEmps", allEmps);
		return mv;
	}
	
	//-----------Send Add Page------------
	
	@GetMapping("/addEmp")
	public String addEmp() {
		return "addEmp";
	}
	
	//-----------Add and update Employee------------
	
	@PostMapping("/addEmp")
	public String addEmp(Employee emp){
		try {
			if(repo.findById(emp.getId()).isPresent()) {
				Employee empSaved=repo.save(emp);
				return "redirect:/app/getEmp?id="+empSaved.getId();
			}else {
				Boolean flag=true;
				int autoGenId=(int) repo.count()+1;
				while(flag) {
					if(repo.findById(autoGenId).isPresent()) {
						autoGenId++;
					}
					else
						flag=false;
				}
				emp.setId(autoGenId);
				Employee empSaved=repo.save(emp);
				return "redirect:/app/getEmp?id="+empSaved.getId();
			}
		}catch(Exception e) {
			System.out.println(e);
			return "redirect:/app/addEmp";
		}
	}
	
	//-----------Retrive employee------------
	
	@GetMapping("/getEmp")
	public ModelAndView search(@RequestParam int id){
		ModelAndView mv = new ModelAndView();
		try {
			Optional<Employee> emp=repo.findById(id);
			mv.addObject("emp",emp);
			mv.setViewName("searchPage");
		}catch(Exception e) {
			System.out.println(e);
			mv.setViewName("searchPage");
		}
		return mv;
	}
	
	//-----------Remove employee------------
	
	@GetMapping("/remove")
	public String deleteEmp(@RequestParam int id) {
		try {
			repo.deleteById(id);
			return "redirect:/app/home";
		}catch(Exception e) {
			System.out.println(e);
			return "redirect:/app/getEmp?id="+id;
		}
		
	}
	
	//-----------send Update employee------------
	
	@GetMapping("/update")
	public ModelAndView update(@RequestParam int id) {
		Optional<Employee> emp=repo.findById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("emp", emp.get());
		mv.setViewName("editEmp");
		return mv;
	}

}
