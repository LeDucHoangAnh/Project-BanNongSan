package kshop.Dao;

import org.springframework.stereotype.Repository;

import kshop.Entity.Admin;
import kshop.Entity.MappersAdmin;

@Repository
public class AdminDao extends BaseDao{
	public Admin GetAdminByAcc(Admin admin) {
		String sql ="SELECT * FROM admin WHERE name = '"+admin.getName()+"' and password = '"+admin.getPassword()+"'";
		Admin result = _jdbcTemplate.queryForObject(sql, new MappersAdmin());
		return result;
	}
	
	 
}
