package com.kh.lid.messenger.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lid.messenger.model.dao.MessengerDao;

@Service
public class MessengerServiceImpl implements MessengerService {
   
   @Autowired
   private MessengerDao messengerDao;

}