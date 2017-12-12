package com.neuedu.controller;

import com.neuedu.pojo.Section;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 描述:
 *
 * @outhor hokitlee
 * @create 2017-12-12 14:23
 */
@Controller
@RequestMapping("html")
public class SectionController {
    @RequestMapping("sectionAdd")
    public String add(Section section){
        System.out.println("section!");
        return "ok";
    }
}