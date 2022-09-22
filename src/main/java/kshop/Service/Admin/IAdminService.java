package kshop.Service.Admin;

import org.springframework.stereotype.Service;

import kshop.Entity.Admin;

@Service
public interface IAdminService {
	public Admin CheckAccount(Admin admin);
}
