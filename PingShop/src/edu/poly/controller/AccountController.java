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


@Transactional
@Controller
@RequestMapping("accountManager")
public class AccountController {
	@Autowired
	SessionFactory factory;

	@ModelAttribute("accounts")
	public List<Account> getAccount() {
		Session session = factory.getCurrentSession();
		String hql = "from Account";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Account> list = query.list();
		return list;	
	}
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("account", new Account());
		return "accountManager";
	}

	@RequestMapping(params = "btn-insert")
	public String insert(ModelMap model,@Validated @ModelAttribute("account") Account accounts,BindingResult errors) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			if(errors.hasErrors()){
				model.addAttribute("message","Thêm tài khoản thất bại, vui lòng nhập lại !" );
			}else{
			session.save(accounts);
			transaction.commit();
			model.addAttribute("message1", "Insert successful !");
			}
		} catch (Exception e) {
			model.addAttribute("message", "Account already exists  !");
			transaction.rollback();
		}
		session.close();
		model.addAttribute("accounts", getAccount());
		return "accountManager";
	}
	@RequestMapping(params = "btn-update")
	public String update(ModelMap model,@Validated @ModelAttribute("account") Account accounts,BindingResult errors) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			if(errors.hasErrors()){
				model.addAttribute("message","Update account failed !" );
			}else{
			session.update(accounts);
			transaction.commit();
			model.addAttribute("message1", "Update account successful !");
			}
		} catch (Exception e) {
			transaction.rollback();
		}
		session.close();
		model.addAttribute("accounts", getAccount());
		return "accountManager";
	}
	@RequestMapping(params = "lnkEdit")
	public String edit1(ModelMap model,  @RequestParam("username") String username) {
		Session session = factory.getCurrentSession();
		Account account = (Account) session.get(Account.class,new String(username));
		model.addAttribute("showform","show");
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
	}
}
