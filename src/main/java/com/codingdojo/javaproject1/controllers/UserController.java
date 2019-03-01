package com.codingdojo.javaproject1.controllers;

import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.javaproject1.models.Message;
import com.codingdojo.javaproject1.models.User;
import com.codingdojo.javaproject1.services.MService;
import com.codingdojo.javaproject1.services.UserService;
import com.codingdojo.javaproject1.validator.UserValidator;



@Controller
public class UserController {

	private final UserService userService;
	private final UserValidator userValidator;
	private final MService mS;  // new
	
	public UserController(UserService userService, MService mS, UserValidator userValidator) {
        this.userService = userService;
        this.mS = mS;
        this.userValidator = userValidator;
    }
	
	@GetMapping("/")
	public String home(@ModelAttribute("newUser") User user, Model model) {
        
        return "index.jsp";
    }
	@GetMapping("/more")
	public String userInfo() {
		return "moreinfo.jsp";
	}
	
    @RequestMapping(value="/registration", method=RequestMethod.POST)
    public String registerUser(@Valid @ModelAttribute("newUser") User user, BindingResult result, HttpSession session) {
        // if result has errors, return the registration page (don't worry about validations just now)
    	userValidator.validate(user, result);
    	if(result.hasErrors()) {
    		return "index.jsp";
    	}
        // else, save the user in the database, save the user id in session, and redirect them to the /home route
    	User u = userService.registerUser(user);
    	session.setAttribute("userId", u.getId());
    	return "redirect:/home";
    }
    
    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, @ModelAttribute("newUser") User user, Model model, HttpSession session) {
        // if the user is authenticated, save their user id in session
    	boolean isAuthenticated = userService.authenticateUser(email, password);
    	if(isAuthenticated) {
    		User u = userService.findByEmail(email);
    		session.setAttribute("userId", u.getId());
    		return "redirect:/home";
    	}
    	else {
    	model.addAttribute("error", "Invalid Credentials. Please try again");
    	return "index.jsp";
    	}
    }
    
    @RequestMapping("/home")
    public String home(HttpSession session, Model model) {
    	Long userId = (Long) session.getAttribute("userId");
    	User u = userService.findUserById(userId);
    	model.addAttribute("user", u);
    	// Message
    	Optional<Message> mgs = mS.listMs(userId);
    	model.addAttribute("messages", mgs);
    	return "homePage.jsp";
    }
    // instructor page
    @RequestMapping("/instructor")
    public String instructor(HttpSession session, Model model) {
    	Long userId = (Long) session.getAttribute("userId");
    	User u = userService.findUserById(userId);
    	model.addAttribute("user", u);
    	return "calendar.jsp";
    }
    
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
    
    // Message
    
}
