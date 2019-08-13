package com.kh.lid.mainpage.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.lid.common.vo.Board;
import com.kh.lid.mainpage.model.service.MainPageService;

@Controller
public class MainPageController {

   @Autowired
   private MainPageService mainPageService;

   // 멤버 회원수
   @RequestMapping("/mainpage/countMember.do")
   @ResponseBody
   public int countMember(Model model) {

      int result = mainPageService.selectCountMember();

      model.addAttribute("result");

      return result;
   }

   // 총 게시물 수
   @RequestMapping("/mainpage/countBoard.do")
   @ResponseBody
   public int countBoard(Model model) {

      int result = mainPageService.selectCountBoard();

      return result;
   }

   // index View
   @RequestMapping("/mainpage/index.do")
   public String indexView(Model model) {

      int result = mainPageService.selectCountMember();

      List<Board> list = mainPageService.selectListBoard();
      List<Board> list1 = new ArrayList();
      List<Board> list2 = new ArrayList();

      System.out.println(list);
      if(list.size()<5) {
         for (int i = 0; i < list.size(); i++) {
            list1.add(list.get(i));
         }
      } else {
         for (int i = 0; i < 5; i++) {
            list1.add(list.get(i));
         }

         for (int i = 5; i < list.size(); i++) {
            list2.add(list.get(i));
         }
      }

      model.addAttribute("list1", list1).addAttribute("list2", list2).addAttribute("result", result);

      return "main/index";
   }

}