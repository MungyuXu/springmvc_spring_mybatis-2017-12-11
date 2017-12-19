package com.neuedu.mapper;

import com.neuedu.pojo.EmployPojo;
import com.neuedu.pojo.SectionMovePojo;
import com.neuedu.pojo.SectionPojo;

import java.util.List;

/**
 * 描述:
 *人员信息对象持久化映射层
 * @outhor hokitlee
 * @create 2017-12-19 9:25
 */
public interface EmployMapper {
    /*新增*/
    void add(EmployPojo employ);
    /*查询所有*/
    List<EmployPojo> queryAll();
    /*条件查询*/
    List<EmployPojo> queryByName(EmployPojo employ);
    /*更新*/
    void update(EmployPojo employ);
    /*查询*/
    List<EmployPojo> epmove_queryAll();

    /*更新人员所在部门*/
    void upDateSection(EmployPojo employPojo);
}
