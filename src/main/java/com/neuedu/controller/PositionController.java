package com.neuedu.controller;

import com.neuedu.pojo.PositionPojo;
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
    //自动装配
    @Autowired
    PositionService positionService;

    //岗位增加
    @RequestMapping(value = "positionAdd")
    public String add(PositionPojo position) {
        positionService.add(position);
        return "redirect:position_queryAll.do";
    }

    //岗位查询
    @RequestMapping(value = "position_queryAll")
    public String queryAll(Model model) {
        System.out.println("!111111111111111");
        List<PositionPojo> positionList;
        positionList = positionService.queryAll();
        model.addAttribute("positionList", positionList);
        return "html/position_modify";
    }

    //岗位删除
    @RequestMapping(value = "position_delete")
    //删除视图查询
    public String delete(Model model) {
        List<PositionPojo> positionList;
        positionList = positionService.queryAll();
        model.addAttribute("positionList", positionList);
        return "html/position_delete";
    }

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
    //按xx查询
    @RequestMapping(value = "position_queryByName")
    public @ResponseBody
    List<PositionPojo> queryByName(@RequestBody PositionPojo position) {
        List<PositionPojo> positionPojos = positionService.queryByName(position);
        return positionService.queryByName(position);
    }

    //岗位信息
    @RequestMapping(value = "update")
    public String update(PositionPojo position) {
        positionService.update(position);
        return "redirect:position_queryAll.do";
    }
}
