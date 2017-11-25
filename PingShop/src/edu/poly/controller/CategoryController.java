package edu.poly.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.bean.Account;
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
	@RequestMapping(params = "btn-insert")
	public String insert(ModelMap model,@Validated @ModelAttribute("category") Category categorys,BindingResult errors) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			if(errors.hasErrors()){
				model.addAttribute("message","Insert category failed !" );
			}else{
			session.save(categorys);
			transaction.commit();
			model.addAttribute("message1", "Insert category successful !");
			}
		} catch (Exception e) {
			model.addAttribute("message", "Category already exists  !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("categorys", getCategory());
		return "categoryManager";
	}
	@RequestMapping(params = "btn-update")
	public String update(ModelMap model,@Validated @ModelAttribute("category") Category categorys,BindingResult errors) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			if(errors.hasErrors()){
				model.addAttribute("message","Update category failed !" );
			}else{
			session.update(categorys);
			transaction.commit();
			model.addAttribute("message1", "Update category successful !");
			}
		} catch (Exception e) {
			transaction.rollback();
		}
		session.close();
		model.addAttribute("categorys", getCategory());
		return "categoryManager";
	}
	@RequestMapping(params = "lnkEdit")
	public String edit1(ModelMap model,  @RequestParam("categoryId") String categoryId) {
		Session session = factory.getCurrentSession();
		Category category = (Category) session.get(Category.class,new String(categoryId));
		model.addAttribute("showform","show");
		model.addAttribute("category", category);
		return "categoryManager";
	}
	public String delete(ModelMap model, @ModelAttribute("categoryId") Category categorys) {
		Session session = factory.openSession();
		String redirect;
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(categorys);
			transaction.commit();
			model.addAttribute("message1", "Delete category successful ! Where categoryId = "+ categorys.getCategoryId());
			redirect= "categoryManager";
		} catch (Exception e) {
			transaction.rollback();
			redirect= "categoryManager";
		}
		session.close();
		model.addAttribute("category", new Category());
		model.addAttribute("categorys", getCategory());
		return "categoryManager";
	}
	@RequestMapping(params = "lnkDelete")
	public String delete1(ModelMap model,String categoryId, @ModelAttribute("category") Category categorys) {
		return delete(model, categorys);
	}
}
