package edu.poly.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.poly.bean.Login;

@Controller
@Transactional
public class LoginController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value ="login", method= RequestMethod.GET)
	public String login(Model model,Login logins){
		model.addAttribute("logins", new Login());
		return "login";
	}
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String Login(Model model, Login logins, HttpServletResponse response,HttpServletRequest request) {
			@SuppressWarnings("unused")
			String redirect= null;
			model.addAttribute("logins", logins);
			Session session = factory.getCurrentSession();
			Query query = session.createQuery("From Login where username = :username and password = :password");
		    query.setParameter("username", logins.getUsername());
		    query.setParameter("password", logins.getPassword());
		    @SuppressWarnings("unchecked")
		    List<Login> list = query.list();
		    if (logins.getUsername().isEmpty()) {
				model.addAttribute("message", "Your username is incorrect");
				redirect = "login";
			} else if (logins.getPassword().isEmpty()) {
				model.addAttribute("message1", "Your password is incorrect");
				redirect = "login";
			} else if (list.isEmpty()) {
				model.addAttribute("message1","Authentication error");
				redirect = "login";
			} else {
    			try {
    				HttpSession sessionf = request.getSession();
    				sessionf.setAttribute("nguoidung", logins.getUsername());
					response.sendRedirect("accountManager.poly");
				} catch (Exception e) {
				}
		    }
			return "login";
	}
	@RequestMapping("logout")
    public String logout(Model model, Login logins,HttpServletRequest request) {
        HttpSession sessionf = request.getSession();
        sessionf.invalidate();
        return login(model,logins);
    }
}
