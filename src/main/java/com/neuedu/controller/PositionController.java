package com.neuedu.controller;

import com.neuedu.pojo.PositionPojo;
import com.neuedu.service.PositionService;
import com.neuedu.service.serviceImpl.PositionServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "html")
public class PositionController {

    @Autowired
    PositionService positionService;

    @RequestMapping(value = "positionAdd")
    public  String add(PositionPojo position){
        System.out.print("positioncondfd");
        positionService.add(position);
        return "ok";
    }
}