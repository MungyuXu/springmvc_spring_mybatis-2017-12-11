package com.neuedu.service;

import com.neuedu.pojo.SectionMovePojo;

import java.util.List;

/**
 * 描述:
 * 员工转部门服务层接口
 *
 * @outhor hokitlee
 * @create 2017-12-19 9:25
 */
public interface SectionMoveService {

    /*新增人员调转部门记录*/
    void add(SectionMovePojo sectionMovePojo);

    /*查询所有人员调转部门记录*/
    List<SectionMovePojo> queryAll();

    /*通过id查询人员调转部门记录*/
    List<SectionMovePojo> queryById(SectionMovePojo sectionMovePojo);

}
