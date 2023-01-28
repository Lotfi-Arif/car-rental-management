package com.crms.demo.DBUtil;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

import com.crms.demo.model.Staff;

@Repository
public class StaffDAO {

	public static Staff authenticate(String username, String password) {
		JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
		String sql = "SELECT * FROM Staff WHERE username= '" + username + "' AND password= '" + password +"'";
		try{
			Staff staff = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Staff>(Staff.class));
			return staff;
		}
		catch(Exception e){
			return null;
		}
	}

	private static DataSource getDataSource() {
		DataSource ds =null;

		String dbURL = "jdbc:mysql://localhost:3306/crms";
		String username = "root";
		String password = "";

		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		ds = new DriverManagerDataSource(dbURL, username, password);
		return ds;
	}
}