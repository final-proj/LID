package com.kh.lid.newsfeed.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.lid.newsfeed.model.service.NewsfeedService;

@Controller
public class NewsfeedController {

   
   @Autowired
   private NewsfeedService NewsfeedService;
   
   @RequestMapping("/newsfeed/")
   public String Newsfeedexample() {
      
      return "";
   }
   
}	
