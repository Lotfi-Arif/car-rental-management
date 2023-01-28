package com.crms.demo.controller;

import com.crms.demo.DBUtil.BookingDAO;
import com.crms.demo.model.Booking;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookingController {

  @RequestMapping(
    value = { "/viewAllBookings", "/viewUpdateBooking", "/viewAddBooking" }
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
      session.getAttribute("role").equals("admin") ||
      session.getAttribute("role").equals("staff") &&
      session.getAttribute("status").equals("success")
    ) {
      switch (url) {
        case "/viewAllBookings":
          return "admin/manageBooking";
        case "/viewUpdateBooking":
          return "admin/UpdateBooking";
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
      return "redirect:/viewAddBooking";
    } else if (
      session.getAttribute("role").equals("staff") &&
      session.getAttribute("status").equals("success")
    ) {
      return "redirect:/viewAddBooking";
    } else {
      return "invaliduser";
    }
  }

  @RequestMapping(value = "/updateBooking")
  public String updateBooking(
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
      return "admin/updateBooking";
    } else if (
      session.getAttribute("role").equals("staff") &&
      session.getAttribute("status").equals("success")
    ) {
      return "staff/updateBooking";
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
      return "redirect:/viewUpdateBooking";
    } else if (
      session.getAttribute("role").equals("staff") &&
      session.getAttribute("status").equals("success")
    ) {
      return "redirect:/viewUpdateBooking";
    } else {
      return "invaliduser";
    }
  }

  @RequestMapping(value = "/applyVoucher")
  public String applyVoucher(
    HttpSession session,
    HttpServletRequest request,
    Model mod
  ) {
    Booking booking = new Booking();
    booking.setBookingId(Integer.parseInt(request.getParameter("bookingId")));
    booking.setBookingVoucher(request.getParameter("bookingVoucher"));
    BookingDAO bookingDAO = new BookingDAO();
    bookingDAO.applyVoucher(booking);
    if (
      session.getAttribute("role").equals("admin") &&
      session.getAttribute("status").equals("success")
    ) {
      return "redirect:/viewUpdateBooking";
    } else if (
      session.getAttribute("role").equals("staff") &&
      session.getAttribute("status").equals("success")
    ) {
      return "redirect:/viewUpdateBooking";
    } else {
      return "invaliduser";
    }
  }
}
