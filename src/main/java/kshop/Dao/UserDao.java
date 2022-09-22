package kshop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import kshop.Entity.MapperUsers;
import kshop.Entity.User;
@Repository
public class UserDao extends BaseDao {

	public int AddAccount(User user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO user ");
		sql.append("( ");
		sql.append("user, ");
		sql.append("password, ");
		sql.append("display_name, ");
		sql.append("address ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("  '"+user.getUser()+"', ");
		sql.append("  '"+user.getPassword()+"', ");
		sql.append("  '"+user.getDisplay_name()+"', ");
		sql.append("  '"+user.getAddress()+"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	
	public User GetUserByAcc(User user) {
		String sql = "SELECT * FROM `user` WHERE user = '"+user.getUser()+"'";
		
		User result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
		
		return result;
	}
	
	public List<User> GetAllUser(){
		List<User> list = new ArrayList<User>();
		String sql = "SELECT * FROM user";
		list = _jdbcTemplate.query(sql, new MapperUsers());
		return list;
	} 
}
