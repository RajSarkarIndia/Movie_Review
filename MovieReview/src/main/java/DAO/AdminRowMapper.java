package DAO;



import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class AdminRowMapper implements RowMapper<Admin> {
	@Override
	public Admin mapRow(ResultSet rs,int RowNo) throws SQLException {
		Admin admin=new Admin();
		admin.setAdminName(rs.getString("AdminName"));
		admin.setEmail(rs.getString("Email"));
		admin.setPassword(rs.getString("Password"));

 
		return admin;
		
		
		
	}

}
