package kshop.Dao;

import java.util.ArrayList;

import java.util.List;

import org.springframework.stereotype.Repository;

import kshop.Entity.MapperMenu;
import kshop.Entity.Menus;

@Repository
public class MenusDao extends BaseDao{
	
	
	public List<Menus> GetDataMenus(){
		List<Menus> list = new ArrayList<Menus>();
		String sql = "SELECT * FROM menus";
		list = _jdbcTemplate.query(sql, new MapperMenu());
		return list;
	}
}
