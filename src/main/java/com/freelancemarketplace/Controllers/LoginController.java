package com.freelancemarketplace.Controllers;

import java.util.List;


import javax.validation.Valid;

import com.freelancemarketplace.Models.Request;
import com.freelancemarketplace.Models.Request;
import com.freelancemarketplace.Models.LoginUser;
import com.freelancemarketplace.Models.User;
import com.freelancemarketplace.Services.RequestService;
import com.freelancemarketplace.Services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
@Controller
public class LoginController {
    
    // Add once service is implemented:
    @Autowired
    private UserService userServ;
    @Autowired
	private RequestService requestService;
    
    @GetMapping("/login")
    public String login(Model model) {
    
        // Bind empty User and LoginUser objects to the JSP
        // to capture the form input
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "Login.jsp";
    }
    
    @GetMapping("/register")
    public String register(Model model) {
    
        // Bind empty User and LoginUser objects to the JSP
        // to capture the form input
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "Register.jsp";
    }
    
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        
        userServ.register(newUser, result);
        if(result.hasErrors()) {
           
            model.addAttribute("newLogin", new LoginUser());
            return "Register.jsp";
        }
       session.setAttribute("user_id", newUser.getId());
       session.setAttribute("userName", newUser.getUserName());
        return "redirect:/";
    }
    
    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, Model model, HttpSession session) {
        
       
        User user = userServ.login(newLogin, result);
    
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "Login.jsp";
        }
        
        session.setAttribute("user_id", user.getId());
        session.setAttribute("userName", user.getUserName());
    
        return "redirect:/";
    }
    
    
    @GetMapping("/")
	public String index(HttpSession session, Model model) {
		if(session.getAttribute("user_id") == null) {
			return "index.jsp";
			}	
		
		List<Request> requests = requestService.allRequests();
		model.addAttribute("requests", requests);
		return "index.jsp";
	}
	@GetMapping("/logout") 
		public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
    
	
	
	@GetMapping("/profile")
    public String profile(HttpSession session, Model model) {
		if(session.getAttribute("user_id") == null) {
			return "index.jsp";
			}	
        // Bind empty User and LoginUser objects to the JSP
        // to capture the form input
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "Profile.jsp";
    }
    
 
}
