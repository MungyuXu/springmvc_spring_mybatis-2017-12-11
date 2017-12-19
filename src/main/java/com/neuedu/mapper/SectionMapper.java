package com.neuedu.mapper;

import com.neuedu.pojo.SectionPojo;

import java.util.List;
/**
 * 描述:
 *部门信息对象持久化映射层
 * @outhor hokitlee
 * @create 2017-12-19 9:25
 */
public interface  SectionMapper {
    /*部门新增*/
    void add(SectionPojo section);
    /*部门查询*/
    List<SectionPojo> queryAll();
    /*通过部门号删除*/
    void dele(String[] sectionSno);
    /*条件查询部门*/
    List<SectionPojo> queryByName(SectionPojo section);
    /*通过id更新部门*/
    void upDateById(SectionPojo sectionPojo);
}
