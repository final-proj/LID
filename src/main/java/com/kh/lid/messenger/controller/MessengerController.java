package com.kh.lid.messenger.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.lid.messenger.model.service.MessengerService;

@Controller
public class MessengerController {

   
   @Autowired
   private MessengerService messengerService;
   
   @RequestMapping("/messenger/goMessenger.do")
   public String goMessenger() {
      
      return "messenger/messenger-page";
   }
   
}	
