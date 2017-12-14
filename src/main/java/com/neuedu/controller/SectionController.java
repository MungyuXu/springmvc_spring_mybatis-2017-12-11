package com.neuedu.controller;

import com.neuedu.pojo.SectionPojo;
import com.neuedu.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "html")
public class SectionController {
@Autowired
    SectionService sectionService;
    @RequestMapping(value = "sectionAdd")
    public String add(SectionPojo section){
        System.out.println("222");
        sectionService.add(section);
        return "ok";
    }
}