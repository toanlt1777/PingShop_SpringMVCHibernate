/*package edu.poly.controller;

import java.io.IOException;
import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.poly.bean.Users;
import edu.poly.service.UserService;

@Controller("UserDao")
public class UserController {
	private static final Logger logger = Logger
            .getLogger(UserController.class);
 
    public UserController() {
        System.out.println("UserController()");
    }
    @Autowired
    private UserService userService;
    
    @RequestMapping("/")
    public ModelAndView listUser(ModelAndView model) throws IOException {
        List<Users> listUser = userService.getAllUsers();
        model.addObject("listUser", listUser);
        model.setViewName("userManager");
        return model;
    }
}	
*/