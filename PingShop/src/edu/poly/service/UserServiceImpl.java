//package edu.poly.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import edu.poly.bean.Users;
//import edu.poly.dao.UserDao;
//import edu.poly.service.UserService;
//
//@Service
//@Transactional
//public class UserServiceImpl implements UserService{
//
//	@Autowired
//    private UserDao userDao;
//	public UserDao getUserDao() {
//		return userDao;
//	}
//	public void setUserDao(UserDao userDao) {
//		this.userDao = userDao;
//	}
//	
//	@Override
//	@Transactional
//	public void addUser(Users user) {
//		userDao.addUser(user);
//	}
//	public Users updateUser(Users user) {
//		return userDao.updateUser(user);
//	}
//	@Override
//	@Transactional
//	public List<Users> getAllUsers() {
//		return userDao.getAllUsers();
//	}
//	public Users getUser(String username) {
//		return userDao.getUser(username);
//	}
//	public void deleteUser(String username) {
//		userDao.deleteUser(username);
//	}
//}
