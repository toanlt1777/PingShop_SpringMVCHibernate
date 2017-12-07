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
@RequestMapping("/index")
public class HomeController {
	@Autowired
	SessionFactory factory;

	@RequestMapping()
	public String index(ModelMap model) {
		return "index";
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
	@ModelAttribute("products")
	public List<Product> getProduct(HttpServletRequest httpServletRequest) {
		String categoryId = httpServletRequest.getParameter("categoryId");
		String hql = "from Product";
		if(categoryId==null) {
			hql = "from Product";
		}
		else {
			hql = "from Product where categorys.categoryId = '"+categoryId+"'";
		}
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		return list;
	}
	public List<Product> getProduct1(String categoryId) {
		Session session = factory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Query query = (Query) session.createQuery("from Product where categoryId =:categoryId");
		query.setString("categoryId", categoryId);
		List<Product> listProduct = query.list();
		transaction.commit();
		return listProduct;
	}

	@RequestMapping("/listProduct")
	public String getList(ModelMap model, @RequestParam String categoryId) {
		model.put("listProduct", getProduct1(categoryId));
		return "index";
	}
	@RequestMapping("lnk")
	public String edit1(ModelMap model,  @RequestParam("productId") String productId) {
		Session session = factory.getCurrentSession();
		Product product = (Product) session.get(Product.class,new String(productId));
		model.addAttribute("product", product);
		return "single";
	}
}
