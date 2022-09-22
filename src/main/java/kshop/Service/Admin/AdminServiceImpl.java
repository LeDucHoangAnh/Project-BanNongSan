package kshop.Service.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kshop.Dao.AdminDao;
import kshop.Entity.Admin;

@Service
public class AdminServiceImpl implements IAdminService {
	@Autowired
	AdminDao adminDao = new AdminDao();

	@Override
	public Admin CheckAccount(Admin admin) {

		if (admin != null) {
			return admin;
		} else {
			return null;
		}
	}

}
