package edu.poly.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import edu.poly.bean.Product;

@Transactional
@Controller
@RequestMapping("productManager")
public class ProductController {
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
	@ModelAttribute("products")
	public List<Product> getProduct() {
		Session session = factory.getCurrentSession();
		String hql = "from Product";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		return list;
	}
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("product", new Product());
		return "productManager";
	}
	@RequestMapping(params = "btn-insert")
	public String insert(ModelMap model,@Validated @ModelAttribute("product") Product products,BindingResult errors) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		/*SimpleDateFormat formaDate = new SimpleDateFormat("dd/MM/yyyy");
        String date = formaDate.format(products.getManufacturingDate());
        products.setManufacturingDate(formaDate.parse(date));
        String date1 = formaDate.format(products.getExpiryDate());
        products.setExpiryDate(formaDate.parse(date1));*/
		try {
			if(errors.hasErrors()){
				model.addAttribute("message","Insert product failed !" );
			}else{
			session.save(products);
			transaction.commit();
			model.addAttribute("message1", "Insert product successful !");
			}
		} catch (Exception e) {
			model.addAttribute("message", "Product already exists  !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("products", getProduct());
		return "productManager";
	}
	@RequestMapping(params = "btn-update")
	public String update(ModelMap model,@Validated @ModelAttribute("product") Product products,BindingResult errors){
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			if(errors.hasErrors()){
				model.addAttribute("message","Update Product failed !" );
			}else{
			session.update(products);
			transaction.commit();
			model.addAttribute("message1", "Update product successful !");
			}
		} catch (Exception e) {
			transaction.rollback();
		}
		session.close();
		model.addAttribute("products", getProduct());
		return "productManager";
	}
	/*@RequestMapping(params = "lnkEdit")
	public String edit1(ModelMap model,  @RequestParam("username") String username) {
		Session session = factory.getCurrentSession();
		Account account = (Account) session.get(Account.class,new String(username));
		model.addAttribute("account", account);
		return "accountManager";
	}
	public String delete(ModelMap model, @ModelAttribute("account") Account accounts) {
		Session session = factory.openSession();
		String redirect;
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(accounts);
			transaction.commit();
			model.addAttribute("message1", "Delete account successful ! Where username = "+ accounts.getUsername());
			redirect= "accountManager";
		} catch (Exception e) {
			transaction.rollback();
			redirect= "accountManager";
		}
		session.close();
		model.addAttribute("account", new Account());
		model.addAttribute("accounts", getAccount());
		return "accountManager";
	}
	@RequestMapping(params = "lnkDelete")
	public String delete1(ModelMap model,String username, @ModelAttribute("account") Account accounts) {
		return delete(model, accounts);
	}*/
}
