package com.crms.demo.model;

public class Booking {

  int bookingId;
  String customerName, vehicleBrand, vehicleModel, vehicleColour, vehicleRegistrationNo, bookingDate, bookingTime, bookingVoucher;
  int vehicleId, customerId;
  float bookingPrice;

  public Booking() {}

  public Booking(
    int bookingId,
    String customerName,
    String vehicleBrand,
    String vehicleModel,
    String vehicleColour,
    String vehicleRegistrationNo,
    String bookingDate,
    String bookingTime,
    int vehicleId,
    int customerId,
    String bookingVoucher,
    float bookingPrice
  ) {
    this.bookingId = bookingId;
    this.customerName = customerName;
    this.vehicleBrand = vehicleBrand;
    this.vehicleModel = vehicleModel;
    this.vehicleColour = vehicleColour;
    this.vehicleRegistrationNo = vehicleRegistrationNo;
    this.bookingDate = bookingDate;
    this.bookingTime = bookingTime;
    this.vehicleId = vehicleId;
    this.customerId = customerId;
    this.bookingVoucher = bookingVoucher;
    this.bookingPrice = bookingPrice;
  }

  public int getBookingId() {
    return bookingId;
  }

  public void setBookingId(int bookingId) {
    this.bookingId = bookingId;
  }

  public String getCustomerName() {
    return customerName;
  }

  public void setCustomerName(String customerName) {
    this.customerName = customerName;
  }

  public String getVehicleBrand() {
    return vehicleBrand;
  }

  public void setVehicleBrand(String vehicleBrand) {
    this.vehicleBrand = vehicleBrand;
  }

  public String getVehicleModel() {
    return vehicleModel;
  }

  public void setVehicleModel(String vehicleModel) {
    this.vehicleModel = vehicleModel;
  }

  public String getVehicleColour() {
    return vehicleColour;
  }

  public void setVehicleColour(String vehicleColour) {
    this.vehicleColour = vehicleColour;
  }

  public String getVehicleRegistrationNo() {
    return vehicleRegistrationNo;
  }

  public void setVehicleRegistrationNo(String vehicleRegistrationNo) {
    this.vehicleRegistrationNo = vehicleRegistrationNo;
  }

  public String getBookingDate() {
    return bookingDate;
  }

  public void setBookingDate(String bookingDate) {
    this.bookingDate = bookingDate;
  }

  public String getBookingTime() {
    return bookingTime;
  }

  public void setBookingTime(String bookingTime) {
    this.bookingTime = bookingTime;
  }

  public int getVehicleId() {
    return vehicleId;
  }

  public void setVehicleId(int vehicleId) {
    this.vehicleId = vehicleId;
  }

  public int getCustomerId() {
    return customerId;
  }

  public void setCustomerId(int customerId) {
    this.customerId = customerId;
  }

  public String getBookingVoucher() {
    return bookingVoucher;
  }

  public void setBookingVoucher(String bookingVoucher) {
    this.bookingVoucher = bookingVoucher;
  }

  public float getBookingPrice() {
    return bookingPrice;
  }

  public void setBookingPrice(float bookingPrice) {
    this.bookingPrice = bookingPrice;
  }

  public float updateBookingPriceWithDiscount(float discount) {
    return (
      this.bookingPrice = this.bookingPrice - (this.bookingPrice * discount)
    );
  }
}
