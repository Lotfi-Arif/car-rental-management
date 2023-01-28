package com.crms.demo.DBUtil;

import com.crms.demo.model.Customer;
import javax.sql.DataSource;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDAO {

  public static Customer authenticate(String username, String password) {
    JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
    String sql =
      "SELECT * FROM Customer WHERE username= '" +
      username +
      "' AND password= '" +
      password +
      "'";
    try {
      Customer user = jdbct.queryForObject(
        sql,
        new BeanPropertyRowMapper<Customer>(Customer.class)
      );
      return user;
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
