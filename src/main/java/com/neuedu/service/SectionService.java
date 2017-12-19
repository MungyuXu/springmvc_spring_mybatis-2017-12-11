package com.neuedu.service;

import com.neuedu.pojo.SectionPojo;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 描述:
 * 部门信息服务层接口
 *
 * @outhor hokitlee
 * @create 2017-12-19 9:25
 */
public interface SectionService {

    /*新增部门信息*/
    int add(SectionPojo section);

    /*查询所有部门信息*/
    List<SectionPojo> queryAll();

    /*通过id批量删除部门*/
    void dele(String[] sections);

    /*通过条件查询部门信息*/
    List<SectionPojo> queryByName(SectionPojo section);

    /*通过id更新部门信息*/
    void upDateById(SectionPojo sectionPojo);
}
