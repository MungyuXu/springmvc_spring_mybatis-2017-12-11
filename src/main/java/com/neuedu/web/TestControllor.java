package com.neuedu.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.neuedu.pojo.Emp;


/**
 * 描述:
 *
 * @outhor hokitlee
 * @create 2017-12-11 16:46
 */
@Controller
public class TestControllor {
    @RequestMapping(value = "regist")
    public String regist(Emp emp){
        System.out.println("OK");
        return "ok";
    }
    @RequestMapping(value = "query")
    public ModelAndView query(Emp emp){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("Emp",emp);
        modelAndView.addObject("tmp","成功2");
        modelAndView.setViewName("ok");
        return modelAndView;
    }
    @RequestMapping(value = "queryModel")
    public String queryModel(Model model){
        System.out.println("!!!!!!!!!!!!!");
        model.addAttribute("tmp","成功");
//        model.addAllAttributes()
        return "ok";
    }
}