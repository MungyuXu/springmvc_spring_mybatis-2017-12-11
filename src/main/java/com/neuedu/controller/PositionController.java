package com.neuedu.controller;

import com.neuedu.pojo.PositionPojo;
import com.neuedu.pojo.SectionPojo;
import com.neuedu.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "html")
public class PositionController {

    @Autowired
    PositionService positionService;

    @RequestMapping(value = "positionAdd")
    public  String add(PositionPojo position){
        positionService.add(position);
        return "redirect:position_queryAll.do";
    }
    //修改部门查询
    @RequestMapping(value = "position_queryAll")
    public String queryAll(Model model) {
        List<PositionPojo> positionList;
        positionList = positionService.queryAll();
        model.addAttribute("sectionList", positionList);
        return "html/position_modify";
    }

    @RequestMapping(value = "position_delete")
    //删除视图查询
    public String delete(Model model) {
        List<PositionPojo> positionList;
        positionList = positionService.queryAll();
        model.addAttribute("positionList", positionList);
        return "html/position_delete"; }

    @RequestMapping(value = "position_doDelete")
    //接收复选框的值，
    public String doDelete(String[] check) {
        if (check != null) {
            positionService.dele(check);
        }
        return "redirect:position_delete.do";
    }
//requestBody 接受jason格式,ajax后台返回不会跳界面;
    //responsebody返回
    @RequestMapping(value = "positionQuery")
    public @ResponseBody ArrayList<PositionPojo> query(@RequestBody PositionPojo position){
//        positionService.query(position);
        return positionService.query(position);
    }
}
