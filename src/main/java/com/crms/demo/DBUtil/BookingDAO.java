package com.crms.demo.DBUtil;

import com.crms.demo.model.Booking;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

@Repository
public class BookingDAO {

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

  public Booking getBookingById(int bookingId) {
    JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
    String sql = "SELECT * FROM Booking WHERE bookingId= '" + bookingId + "'";
    try {
      Booking booking = jdbct.queryForObject(
        sql,
        new BeanPropertyRowMapper<Booking>(Booking.class)
      );
      return booking;
    } catch (Exception e) {
      return null;
    }
  }

  public Booking getAllBookings() {
    JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
    String sql = "SELECT * FROM Booking";
    try {
      Booking booking = jdbct.queryForObject(
        sql,
        new BeanPropertyRowMapper<Booking>(Booking.class)
      );
      return booking;
    } catch (Exception e) {
      return null;
    }
  }

  public List<Booking> getAllBookingsList() {
    JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
    String sql = "SELECT * FROM Booking";
    try {
      List<Booking> booking = jdbct.query(
        sql,
        new BeanPropertyRowMapper<Booking>(Booking.class)
      );
      return booking;
    } catch (Exception e) {
      return null;
    }
  }

  public void addBooking(Booking booking) {
    JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
    String sql =
      "INSERT INTO Booking (bookingId, bookingDate, bookingTime, bookingStatus, bookingType, bookingPrice, bookingStaffId, bookingCustomerId, bookingRoomId) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    jdbct.update(
      sql,
      booking.getBookingId(),
      booking.getBookingDate(),
      booking.getBookingTime(),
      booking.getCustomerId(),
      booking.getCustomerName(),
      booking.getVehicleBrand(),
      booking.getVehicleModel(),
      booking.getVehicleRegistrationNo(),
      booking.getVehicleColour(),
      booking.getVehicleId()
    );
  }

  public void updateBooking(Booking booking) {
    JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
    String sql =
      "UPDATE Booking SET bookingDate = ?, bookingTime = ?, bookingStatus = ?, bookingType = ?, bookingPrice = ?, bookingStaffId = ?, bookingCustomerId = ?, bookingRoomId = ? WHERE bookingId = ?";
    jdbct.update(
      sql,
      booking.getBookingId(),
      booking.getBookingDate(),
      booking.getBookingTime(),
      booking.getCustomerId(),
      booking.getCustomerName(),
      booking.getVehicleBrand(),
      booking.getVehicleModel(),
      booking.getVehicleRegistrationNo(),
      booking.getVehicleColour()
    );
  }

  public void deleteBooking(Booking booking) {
    JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
    String sql = "DELETE FROM Booking WHERE bookingId = ?";
    jdbct.update(sql, booking.getBookingId());
  }

  public void applyVoucher(Booking booking) {
    JdbcTemplate jdbct = new JdbcTemplate(getDataSource());
    String sql = "UPDATE Booking SET bookingPrice = ? WHERE bookingId = ?";
    jdbct.update(
      sql,
      booking.updateBookingPriceWithDiscount(20),
      booking.getBookingId()
    );
  }
}
