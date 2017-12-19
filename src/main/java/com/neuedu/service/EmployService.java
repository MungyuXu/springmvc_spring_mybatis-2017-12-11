package com.neuedu.service;

import com.neuedu.pojo.EmployPojo;

import java.util.List;

/**
 * 描述:
 *人员信息服务层接口
 * @outhor hokitlee
 * @create 2017-12-19 9:25
 */
public interface EmployService {
    /*人员新增*/
    int add(EmployPojo employ);
    /*查询所有人员*/
    List<EmployPojo> queryAll();
    /*通过条件查询人员*/
    List<EmployPojo> queryByName(EmployPojo employ);
    /*通过id更新人员*/
    void update(EmployPojo employ);
    /*查询*/
    List<EmployPojo> epmove_queryAll();
    /*更新人员部门信息*/
    void upDateSection(EmployPojo employPojo);
}
