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

import edu.poly.bean.Customer;
import edu.poly.bean.Product;

@Transactional
@Controller
@RequestMapping("customerManager")
public class CustomerController {
	@Autowired
	SessionFactory factory;
	
	@ModelAttribute("customers")
	public List<Customer> getCustomer() {
		Session session = factory.getCurrentSession();
		String hql = "from Customer";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Customer> list = query.list();
		return list;
	}
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("customer", new Customer());
		return "customerManager";
	}
	@RequestMapping(params = "btn-insert")
	public String insert(ModelMap model,@Validated @ModelAttribute("customer") Customer customers,BindingResult errors) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		/*SimpleDateFormat formaDate = new SimpleDateFormat("dd/MM/yyyy");
        String date = formaDate.format(products.getManufacturingDate());
        products.setManufacturingDate(formaDate.parse(date));
        String date1 = formaDate.format(products.getExpiryDate());
        products.setExpiryDate(formaDate.parse(date1));*/
		try {
			if(errors.hasErrors()){
				model.addAttribute("message","Insert customer failed !" );
			}else{
			session.save(customers);
			transaction.commit();
			model.addAttribute("message1", "Insert customer successful !");
			}
		} catch (Exception e) {
			model.addAttribute("message", "Username already exists  !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("customers", getCustomer());
		return "customerManager";
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
	@RequestMapping(params = "lnkEdit")
	public String edit1(ModelMap model,  @RequestParam("productId") String productId) {
		Session session = factory.getCurrentSession();
		Product product = (Product) session.get(Product.class,new String(productId));
		model.addAttribute("showform","show");
		model.addAttribute("product", product);
		return "productManager";
	}
	public String delete(ModelMap model, @ModelAttribute("product") Product products) {
		Session session = factory.openSession();
		String redirect;
		Transaction transaction = session.beginTransaction();
		try {
			session.delete(products);
			transaction.commit();
			model.addAttribute("message1", "Delete Product successful ! Where productId = "+ products.getProductId());
			redirect= "productManager";
		} catch (Exception e) {
			transaction.rollback();
			redirect= "productManager";
		}
		session.close();
		model.addAttribute("product", new Product());
		model.addAttribute("products", getProduct());
		return "productManager";
	}
	@RequestMapping(params = "lnkDelete")
	public String delete1(ModelMap model,String productId, @ModelAttribute("product") Product products) {
		return delete(model, products);
	}
}
