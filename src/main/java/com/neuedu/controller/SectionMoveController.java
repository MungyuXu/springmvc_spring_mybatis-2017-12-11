package com.neuedu.controller;

import com.neuedu.pojo.EmployPojo;
import com.neuedu.service.EmployService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 描述:
 *
 * @outhor hokitlee
 * @create 2017-12-19 9:59
 */
@Controller
@RequestMapping(value = "html")
public class SectionMoveController {
    @Autowired
    EmployService employService;

    @RequestMapping(value = "section_move")
    public String employQeryAll(Model model){
        List<EmployPojo> employPojoList =  employService.queryAll();
        model.addAttribute("employPojoList",employPojoList);
        return "html/section_move";
    }
    @RequestMapping(value = "employQeryById")
    public @ResponseBody List<EmployPojo> employQeryById(@RequestBody EmployPojo employPojo){
        List<EmployPojo> employPojoList = employService.queryByName(employPojo);
        return employService.queryByName(employPojo);
    }
}