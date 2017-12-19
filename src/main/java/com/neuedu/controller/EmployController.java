package com.neuedu.controller;

import com.neuedu.pojo.EmployPojo;
import com.neuedu.pojo.PositionPojo;
import com.neuedu.pojo.SectionPojo;
import com.neuedu.service.EmployService;
import com.neuedu.service.PositionService;
import com.neuedu.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import org.springframework.ui.Model;

/**
 * 描述:
 *人员控制层
 * @outhor hokitlee
 * @create 2017-12-19 9:25
 */
@Controller
@RequestMapping(value = "html")
public class EmployController {

    @Autowired
    EmployService employService;
    @Autowired
    SectionService sectionService;
    @Autowired
    PositionService positionService;

    /*人员增加*/
    @RequestMapping(value = "employAdd")
    public String add(EmployPojo employ) {
        employService.add(employ);
        return "html/normal_entry";
    }

    /*查询所有员工*/
    @RequestMapping(value = "employ_queryAll")
    public String queryAll(Model model) {
        List<EmployPojo> employList;
        employList = employService.queryAll();
        model.addAttribute("employList", employList);
        return "html/info_modify";
    }

    /*按具体条件模糊查询*/
    @RequestMapping(value = "employ_queryByName")
    public @ResponseBody
    List<EmployPojo> queryByName(@RequestBody EmployPojo employ) {
        List<EmployPojo> employList = employService.queryByName(employ);
        return employService.queryByName(employ);
    }

    /*更新人员信息*/
    @RequestMapping(value = "employUpdate")
    public String update(EmployPojo employ) {
        employService.update(employ);
        return "redirect:employ_queryAll.do";
    }

    /*员工岗位调动查询*/
    @RequestMapping(value = "epmove_queryAll")
    public String epmove_queryAll(Model model) {
        List<EmployPojo> employList;
        employList = employService.queryAll();
        model.addAttribute("employList", employList);
        return "html/position_move1";
    }

    /*查询部门，岗位信息，下拉控件使用*/
    @RequestMapping(value = "epmove_normalEentry")
    public String epmove_normalEentry(Model model) {
        List<SectionPojo> sectionList = sectionService.queryAll();
        model.addAttribute("sectionList", sectionList);
        List<PositionPojo> positionPojos = positionService.queryAll();
        model.addAttribute("positionList", positionPojos);
        return "html/normal_entry";
    }
}

