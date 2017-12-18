package com.neuedu.controller;

import com.neuedu.pojo.EmployPojo;
import com.neuedu.service.EmployService;
//import com.sun.tools.internal.ws.processor.model.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import org.springframework.ui.Model;
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

    
    @RequestMapping(value = "employ_queryAll")
    public String queryAll(Model model) {
        List<EmployPojo> employList;
        employList = employService.queryAll();
        model.addAttribute("employList", employList);
        return "html/info_modify";
    }
    
    
    @RequestMapping(value = "employ_queryByName")
    public @ResponseBody
    List<EmployPojo> queryByName(@RequestBody EmployPojo employ){
        return employService.queryByName(employ);
    }

    @RequestMapping (value ="employUpdate")
    public  String update(EmployPojo employ){
        employService.update(employ);
        return "redirect:employ_queryAll.do";
    }
}

