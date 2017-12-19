package com.neuedu.service.serviceImpl;

import com.neuedu.mapper.SectionMoveMapper;
import com.neuedu.pojo.EmployPojo;
import com.neuedu.pojo.SectionMovePojo;
import com.neuedu.service.EmployService;
import com.neuedu.service.SectionMoveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 描述:
 * 人员转部门服务实现类
 * @outhor hokitlee
 * @create 2017-12-19 14:18
 */
@Service
public class sectionMoveServiceImpl implements SectionMoveService {

    @Autowired
    SectionMoveMapper sectionMoveMapper;

    @Autowired
    EmployServiceImpl employService;
    /*新增人员调转部门信息*/
    @Override
    public void add(SectionMovePojo sectionMovePojo) {
        EmployPojo employPojo = new EmployPojo();
        employPojo.setEno(sectionMovePojo.getEno());
        employPojo.setEsection(sectionMovePojo.getMovePosition());
        /*更新人员的部门*/
        employService.upDateSection(employPojo);
        sectionMoveMapper.add(sectionMovePojo);
    }

    /*查询人员调转部门信息*/
    @Override
    public List<SectionMovePojo> queryAll() {
        return sectionMoveMapper.queryAll();
    }

    /*通过条件查询人员调转部门记录*/
    @Override
    public List<SectionMovePojo> queryById(SectionMovePojo sectionMovePojo) {
        return sectionMoveMapper.queryById(sectionMovePojo);
    }

}