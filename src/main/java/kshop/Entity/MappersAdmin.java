package kshop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MappersAdmin implements RowMapper<Admin> {

	@Override
	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
		Admin ad = new Admin();
		ad.setId(rs.getInt("id"));
		ad.setName(rs.getString("name"));
		ad.setPassword(rs.getString("password"));
		return null;
	}

}
