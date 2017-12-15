package com.neuedu.controller;

import com.neuedu.pojo.EmployPojo;
import com.neuedu.service.EmployService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "html")
public class EmployController {
    @Autowired
    EmployService employService;

    @RequestMapping(value = "employAdd")
    public  String add(EmployPojo employ){
        employService.add(employ);
        return "ok";
    }
}

