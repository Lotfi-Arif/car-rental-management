package com.crms.demo.model;

public class Vehicle {

  String brand, model, colour, engine, registrationno;
  int vehicleid;

  public Vehicle() {}

  public Vehicle(
    int vehicleid,
    String brand,
    String model,
    String colour,
    String engine,
    String registrationno
  ) {
    this.vehicleid = vehicleid;
    this.brand = brand;
    this.model = model;
    this.colour = colour;
    this.engine = engine;
    this.registrationno = registrationno;
  }

  //accessor and mutator methods
  public int getVehicleid() {
    return vehicleid;
  }

  public void setVehicleid(int vehicleid) {
    this.vehicleid = vehicleid;
  }

  public String getBrand() {
    return brand;
  }

  public void setBrand(String brand) {
    this.brand = brand;
  }

  public String getModel() {
    return model;
  }

  public void setModel(String model) {
    this.model = model;
  }

  public String getColour() {
    return colour;
  }

  public void setColour(String colour) {
    this.colour = colour;
  }

  public String getEngine() {
    return engine;
  }

  public void setEngine(String engine) {
    this.engine = engine;
  }

  public String getRegistrationno() {
    return registrationno;
  }

  public void setRegistrationno(String registrationno) {
    this.registrationno = registrationno;
  }
}
