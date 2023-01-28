package com.crms.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {

    @RequestMapping(value="/paymentPage")
    public String viewPayment(HttpSession session) {
            return "paymentPage";
        }
    
        @RequestMapping(value="/paymentPage2")
        public String viewPayment2(HttpSession session) {
                return "paymentPage2";
            }

            @RequestMapping(value="/onlinePaymentPage")
    public String viewOnlinePayment(HttpSession session) {
            return "onlinePaymentPage";
        }

        @RequestMapping(value="/reportingPage")
    public String viewreportingpage(HttpSession session) {
            return "reportingPage";
        }

        @RequestMapping(value="/vehicleConditionPage")
    public String viewVehicleCondition(HttpSession session) {
            return "vehicleConditionPage";
        }
}
