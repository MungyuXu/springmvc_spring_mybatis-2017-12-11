package com.neuedu.controller;

import com.neuedu.pojo.SectionPojo;
import com.neuedu.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author hokitlee
 */
@Controller
@RequestMapping(value = "html")
public class SectionController {
    @Autowired
    SectionService sectionService;

    //新增部门
        @RequestMapping(value = "sectionAdd")
    public String add(SectionPojo section) {
        sectionService.add(section);
        return "redirect:section_queryAll.do";
    }

    //修改部门查询
    @RequestMapping(value = "section_queryAll")
    public String queryAll(Model model) {
        List<SectionPojo> sectionList;
        sectionList = sectionService.queryAll();
        model.addAttribute("sectionList", sectionList);
        return "html/section_modify";
    }

    @RequestMapping(value = "section_delete")
    //删除视图查询
    public String delete(Model model) {
        List<SectionPojo> sectionList;
        sectionList = sectionService.queryAll();
        model.addAttribute("sectionList", sectionList);
        return "html/section_delete";
    }

    @RequestMapping(value = "section_doDelete")
    //接收复选框的值，
    public String doDelete(String[] check) {
        //判断是否为null,这个狗东西浪费了我半个小时！
        if (check != null) {
            sectionService.dele(check);
        }
        return "redirect:section_delete.do";
    }
    @RequestMapping(value = "section_queryByName")
    public @ResponseBody List<SectionPojo>  queryByName (@RequestBody SectionPojo section){
            List<SectionPojo> sectionPojos = sectionService.queryByName(section);
            return sectionService.queryByName(section);
    }
}