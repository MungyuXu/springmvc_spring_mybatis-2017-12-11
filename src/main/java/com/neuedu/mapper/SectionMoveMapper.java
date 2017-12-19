package com.neuedu.mapper;

import com.neuedu.pojo.SectionMovePojo;

import java.util.List;

/**
 * 描述:
 *人员部门调转对象持久化映射层
 * @outhor hokitlee
 * @create 2017-12-19 9:25
 */
public interface SectionMoveMapper {
    /*人员调转部门记录新增*/
    void add(SectionMovePojo sectionMovePojo);
    /*查询所有人员调转部门记录*/
    List<SectionMovePojo> queryAll();
    /*通过id查询人员调转记录*/
    List<SectionMovePojo> queryById(SectionMovePojo sectionMovePojo);
}
