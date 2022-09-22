package kshop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import kshop.Entity.User;

@Service
public interface IAccountService {
	public int AddAccount(User user);
	public User CheckAccount(User user);
	public List<User> GetAllUser();
}	
