package com.crms.demo.DBUtil;

import com.crms.demo.model.Admin;
import javax.sql.DataSource;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {

  public static Admin authenticate(String username, String password) {
    JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
    String sql =
      "SELECT * FROM Admin WHERE username= '" +
      username +
      "' AND password= '" +
      password +
      "'";
    try {
      Admin admin = jdbct.queryForObject(
        sql,
        new BeanPropertyRowMapper<Admin>(Admin.class)
      );
      return admin;
    } catch (Exception e) {
      return null;
    }
  }

  private static DataSource getDataSource() {
    DataSource ds = null;

    String dbURL = "jdbc:mysql://localhost:3306/crms";
    String username = "root";
    String password = "";

    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (Exception e) {
      e.printStackTrace();
    }
    ds = new DriverManagerDataSource(dbURL, username, password);
    return ds;
  }
}
