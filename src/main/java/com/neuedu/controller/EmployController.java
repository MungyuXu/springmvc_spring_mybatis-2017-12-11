package com.neuedu.controller;

import com.neuedu.pojo.EmployPojo;
import com.neuedu.pojo.PositionMovePojo;
import com.neuedu.pojo.PositionPojo;
import com.neuedu.pojo.SectionPojo;
import com.neuedu.service.EmployService;
//import com.sun.tools.internal.ws.processor.model.Model;
import com.neuedu.service.PositionService;
import com.neuedu.service.SectionService;
import com.neuedu.service.serviceImpl.SectionServiceImpl;
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

    @Autowired
    SectionService sectionService;

    @Autowired
    PositionService positionService;

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
    public @ResponseBody List<EmployPojo> queryByName(@RequestBody EmployPojo employ){
        List<EmployPojo> employList =employService.queryByName(employ);
        return employService.queryByName(employ);
    }

    @RequestMapping (value ="employUpdate")
    public  String update(EmployPojo employ){
        employService.update(employ);
        return "redirect:employ_queryAll.do";
    }

//    @RequestMapping(value = "epmove_queryAll")
//    public String epmove_queryAll(Model model) {
//        List<PositionMovePojo> positionMoveList;
//        positionMoveList = employService.epmove_queryAll();
//        model.addAttribute("positionMoveList", positionMoveList);
////        return "html/position_move";
//        return "html/position_move1";
//    }
@RequestMapping(value = "epmove_queryAll")
public String epmove_queryAll(Model model) {
    List<EmployPojo> employList;
    employList = employService.queryAll();
    model.addAttribute("employList", employList);
    return "html/position_move1";
}
    @RequestMapping(value = "epmove_normalEentry")
    public String epmove_normalEentry(Model model) {
        List<SectionPojo> sectionList = sectionService.queryAll();
        model.addAttribute("sectionList", sectionList);
        List<PositionPojo> positionPojos = positionService.queryAll();
        model.addAttribute("positionList",positionPojos);
        return "html/normal_entry";
    }
}

