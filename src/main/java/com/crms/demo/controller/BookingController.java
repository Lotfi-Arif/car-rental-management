package com.crms.demo.controller;

import com.crms.demo.DBUtil.BookingDAO;
import com.crms.demo.model.Booking;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookingController {

  @RequestMapping(
    value = { "/viewAllBookings", "/viewEditBooking", "/viewAddBooking" }
  )
  public String viewManageBooking(
    HttpSession session,
    Model mod,
    HttpServletRequest request
  ) {
    BookingDAO bookingDAO = new BookingDAO();
    List<Booking> bList = bookingDAO.getAllBookingsList();
    mod.addAttribute("booking", bList);
    System.out.println(bList);
    String url = request.getServletPath();
    if (
      session.getAttribute("role").equals("admin") &&
      session.getAttribute("status").equals("success")
    ) {
      switch (url) {
        case "/viewAllBookings":
          return "admin/manageBooking";
        case "/viewEditBooking":
          return "admin/editBooking";
        default:
          return "admin/addBooking";
      }
    } else {
      return "invaliduser";
    }
  }

  @RequestMapping(value = "/addBooking")
  public String addBooking(
    HttpSession session,
    HttpServletRequest request,
    Model mod
  ) {
    Booking booking = new Booking();
    booking.setBookingId(Integer.parseInt(request.getParameter("bookingId")));
    booking.setBookingDate(request.getParameter("bookingDate"));
    booking.setBookingTime(request.getParameter("bookingTime"));
    booking.setCustomerId(Integer.parseInt(request.getParameter("customerId")));
    booking.setVehicleId(Integer.parseInt(request.getParameter("vehicleId")));
    booking.setVehicleBrand(request.getParameter("vehicleBrand"));
    booking.setVehicleModel(request.getParameter("vehicleModel"));
    booking.setVehicleColour(request.getParameter("vehicleColour"));
    booking.setVehicleRegistrationNo(
      request.getParameter("vehicleRegistrationNo")
    );
    BookingDAO bookingDAO = new BookingDAO();
    bookingDAO.addBooking(booking);
    if (
      session.getAttribute("role").equals("admin") &&
      session.getAttribute("status").equals("success")
    ) {
      return "admin/manageBooking";
    } else {
      return "invaliduser";
    }
  }

  @RequestMapping(value = "/editBooking")
  public String editBooking(
    HttpSession session,
    HttpServletRequest request,
    Model mod
  ) {
    Booking booking = new Booking();
    booking.setBookingId(Integer.parseInt(request.getParameter("bookingId")));
    booking.setBookingDate(request.getParameter("bookingDate"));
    booking.setBookingTime(request.getParameter("bookingTime"));
    booking.setCustomerId(Integer.parseInt(request.getParameter("customerId")));
    booking.setVehicleId(Integer.parseInt(request.getParameter("vehicleId")));
    booking.setVehicleBrand(request.getParameter("vehicleBrand"));
    booking.setVehicleModel(request.getParameter("vehicleModel"));
    booking.setVehicleColour(request.getParameter("vehicleColour"));
    booking.setVehicleRegistrationNo(
      request.getParameter("vehicleRegistrationNo")
    );
    BookingDAO bookingDAO = new BookingDAO();
    bookingDAO.updateBooking(booking);
    if (
      session.getAttribute("role").equals("admin") &&
      session.getAttribute("status").equals("success")
    ) {
      return "admin/manageBooking";
    } else {
      return "invaliduser";
    }
  }

  @RequestMapping(value = "/deleteBooking")
  public String deleteBooking(
    HttpSession session,
    HttpServletRequest request,
    Model mod
  ) {
    Booking booking = new Booking();
    booking.setBookingId(Integer.parseInt(request.getParameter("bookingId")));
    BookingDAO bookingDAO = new BookingDAO();
    bookingDAO.deleteBooking(booking);
    if (
      session.getAttribute("role").equals("admin") &&
      session.getAttribute("status").equals("success")
    ) {
      return "admin/manageBooking";
    } else {
      return "invaliduser";
    }
  }
}
