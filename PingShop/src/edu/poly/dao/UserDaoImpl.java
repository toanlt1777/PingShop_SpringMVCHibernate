/*package edu.poly.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.poly.bean.Users;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addUser(Users user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		
	}
	@Override
	public Users updateUser(Users user) {
		sessionFactory.getCurrentSession().update(user);
        return user;
		
	}
	@SuppressWarnings("unchecked")
	public List<Users> getAllUsers() {
		 return sessionFactory.getCurrentSession().createQuery("from Users")
	                .list();
	}

	@Override
	public Users getUser(String username) {
		return (Users) sessionFactory.getCurrentSession().get(
                Users.class, username);
	}

	@Override
	public void deleteUser(String username) {
		Users user = (Users) sessionFactory.getCurrentSession().load(
                Users.class, username);
        if (null != user) {
            this.sessionFactory.getCurrentSession().delete(user);
        }
		
	}
}
*/