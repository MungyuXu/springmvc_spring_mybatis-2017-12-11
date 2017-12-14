package com.neuedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 描述:
 *
 * @outhor hokitlee
 * @create 2017-12-14 9:28
 */
@Controller
@RequestMapping(value = "html")
public class SectionController {

    @RequestMapping(value = "sectionAdd")
    public String add(){
        System.out.println("222");
        return "ok";
    }
}