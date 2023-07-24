package com.practice.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.practice.demo.pojo.Admin;
import com.practice.demo.repo.AdminRepo;
import com.practice.demo.service.Services;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepo adminRepo;
	
	@Autowired
	Services service;
	
	//-----------Send Admin Register Page------------
	
	@GetMapping("/registerAdmin")
	public String registerAdmin(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		try {
			if(session.getAttribute("admin")==null) {
				return "registerAdminPage";
			}
			else {
				return "redirect:/app/home";
			}
		}catch(Exception e) {
			return "registerAdminPage";
		}
	}
	
	//-----------Admin Register------------
	
	@PostMapping("/registerAdmin")
	public String registerAdmin(Admin admin) {
		try {
			
			if(!adminRepo.findById(admin.getUname()).isPresent())
			{
				admin.setPass(service.getEncodedPass(admin.getPass()));
				adminRepo.save(admin);
				return "redirect:/login";
			}else
				return "redirect:/registerAdmin";
			
		}catch(Exception e) {
			return "redirect:/registerAdmin";
		}
		
	}
	
	//-----------Send Admin Login Page------------
	
	@GetMapping(value= {"","/","/login"})
	public String login(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		try {
			if(session.getAttribute("admin")==null) {
				return "loginPage";
			}
			else {
				return "redirect:/app/home";
			}
		}catch(Exception e) {
			return "loginPage";
		}
		
	}
	
	//-----------Admin Login------------
	
	@PostMapping("/login")
	public String login(Admin admin, HttpServletRequest req) {
		String url= "";
		try {
			Optional<Admin> adminFromDB = adminRepo.findById(admin.getUname());
			if(adminFromDB.isPresent()) {
				if(adminFromDB.get().getPass().equals(service.getEncodedPass(admin.getPass()))) {
					HttpSession session = req.getSession();
					session.setAttribute("admin", adminFromDB.get());
					url = "redirect:/app/home";
				}else
					url = "redirect:/login";
			}else
				url = "redirect:/login";
			
			return url;
			
		}catch(Exception e) {
			System.out.println(e);
			return "redirect:/login";
		}
	}
	
	//-----------Admin Logout------------
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		session.setAttribute("admin", null);
		return "redirect:/login";
	}

}
