package com.freelancemarketplace.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.freelancemarketplace.Models.Request;
import com.freelancemarketplace.Models.User;
import com.freelancemarketplace.Services.RequestService;
import com.freelancemarketplace.Services.UserService;
@Controller
public class RequestController {
	@Autowired
	UserService userService;
	
	@Autowired
	RequestService requestService;
	
	
	
	@GetMapping("/request/new") 
	public String addRequest(HttpSession session, @ModelAttribute("newRequest")Request newRequest, Model model, Long id) {
		if(session.getAttribute("user_id") == null) {
			return "index.jsp";
		}
		return "PostRequest.jsp";
	}

	@PostMapping("/request/new")
	public String processNewRequest(@Valid @ModelAttribute("newRequest")Request newRequest,BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			List<User> users = userService.allUsers();
			model.addAttribute("users", users);
			return "PostRequest.jsp";	
		} else {
			requestService.addRequest(newRequest);
			return "redirect:/";
		}
	}
	
	@GetMapping("/show/{id}")
	public String showOneRequest(HttpSession session, @PathVariable("id")Long id, Model model) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/";
		}
		Request request = requestService.findOneRequest(id);
		model.addAttribute("request", request);
			return "ShowRequest.jsp";
	}
	
	@GetMapping("/edit/{id}")
	public String editRequest(HttpSession session, @PathVariable("id")Long id, Model model) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/";
		}
		Request request = requestService.findOneRequest(id);
		model.addAttribute("editRequest", request);
			return "EditRequest.jsp";
	}
	
	@PutMapping("/edit/{id}")
	public String processEditRequest(@Valid @ModelAttribute("editRequest")Request editRequest, BindingResult result,@PathVariable("id")Long id, HttpSession session) {
		if(result.hasErrors()) {
				return "EditRequest.jsp";
		} else {
			requestService.updateRequest(editRequest);
			return "redirect:/";
		}
	}
	
	@DeleteMapping("/request/{id}/delete")
	public String deleteRequest(@PathVariable("id") Long id) {
		requestService.deleteRequest(id);
		return "redirect:/";
	}
}

