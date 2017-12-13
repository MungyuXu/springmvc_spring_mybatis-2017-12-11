package com.neuedu.controller;

import com.neuedu.pojo.SectionPojo;
import com.neuedu.service.SectionService;
import com.neuedu.service.serviceImpl.SectionServiceImp;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * 描述:
 *
 * @outhor hokitlee
 * @create 2017-12-12 14:23
 */
@Controller
@RequestMapping("html")
public class SectionController {
    @Resource
    SectionService sectionService;
    @RequestMapping("sectionAdd")
    public String add(SectionPojo section){
        sectionService.add();
        return "ok";
    }
}