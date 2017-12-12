package com.neuedu.controller;

import com.neuedu.pojo.PositionPojo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 描述:
 *
 * @outhor hokitlee
 * @create 2017-12-12 15:30
 */
@Controller

@RequestMapping("html")
public class PositionContorller {
    @RequestMapping("positionAdd")
    public String add(PositionPojo position){
        System.out.println("position");
        return "ok";
    }
}