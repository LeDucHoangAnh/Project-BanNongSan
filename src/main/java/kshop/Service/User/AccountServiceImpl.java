package kshop.Service.User;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kshop.Dao.UserDao;
import kshop.Entity.User;

@Service
public class AccountServiceImpl implements IAccountService {

	@Autowired
	UserDao userDao = new UserDao();

	public int AddAccount(User user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		
		return userDao.AddAccount(user);
	}

	@Override
	public User CheckAccount(User user) {
		String pass = user.getPassword();
		
		user = userDao.GetUserByAcc(user);
		if(user != null)
		{
			if(BCrypt.checkpw(pass, user.getPassword())) {
				return user;
			}
			else {
				return null;
			}
		}
		return null;
	}

	@Override
	public List<User> GetAllUser() {
		// TODO Auto-generated method stub
		return userDao.GetAllUser();
	}

}
