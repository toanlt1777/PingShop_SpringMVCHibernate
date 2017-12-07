package edu.poly.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.bean.Category;
import edu.poly.bean.Product;

@Transactional
@Controller
@RequestMapping("single")
public class SingleControlller {
	@Autowired
	SessionFactory factory;

	@RequestMapping("")
	public String index(ModelMap model) {
		return "single";
	}
	@ModelAttribute("listCategory")
	public List<Category> getCategory() {
		Session session = factory.getCurrentSession();
		String hql = "from Category";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> list3 = query.list();
		return list3;
	}
	@ModelAttribute("product")
	public List<Product> getProduct(HttpServletRequest httpServletRequest) {
		String productId = httpServletRequest.getParameter("productId");
		String hql;
		hql = "from Product where productId = '"+productId+"'";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		return list;
	}
	
}
