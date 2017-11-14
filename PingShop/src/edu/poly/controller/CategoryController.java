package edu.poly.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.bean.Category;

@Transactional
@Controller
@RequestMapping("categoryManager")
public class CategoryController {
	@Autowired
	SessionFactory factory;

	@ModelAttribute("categorys")
	public List<Category> getCategory() {
		Session session = factory.getCurrentSession();
		String hql = "from Category";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> list = query.list();
		return list;	
	}
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("category", new Category());
		return "categoryManager";
	}
}
