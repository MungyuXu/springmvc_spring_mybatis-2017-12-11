package com.neuedu.service.serviceImpl;

import com.neuedu.mapper.EmployMapper;
import com.neuedu.mapper.PositionMoveMapper;
import com.neuedu.pojo.EmployPojo;

import com.neuedu.service.EmployService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 描述:
 *人员信息服务层实现类
 * @outhor hokitlee
 * @create 2017-12-19 9:25
 */
@Service
public class EmployServiceImpl implements EmployService {
    /*自动装配*/
    @Autowired
    EmployMapper employMapper;
    @Autowired
    PositionMoveMapper positionMoveMapper;

    /*增加人员*/
    @Override
    public int add(EmployPojo employ) {
        employMapper.add(employ);
        return 0;
    }

    /*查询人员*/
    @Override
    public List<EmployPojo> queryAll() {
        return employMapper.queryAll();
    }

    /*按需查询*/
    @Override
    public List<EmployPojo> queryByName(EmployPojo employ) {
        return employMapper.queryByName(employ);
    }

    /*修改*/
    @Override
    public void update(EmployPojo employ) {
        employMapper.update(employ);
    }

    @Override
   public List<PositionMovePojo> epmove_queryAll() {
        return positionMoveMapper.queryAll();
    }
    @Override
    public List<EmployPojo> epmove_queryAll() {
        return employMapper.queryAll();
    }

    /*通过id更新人员部门信息*/
    @Override
    public void upDateSection(EmployPojo employPojo) {
        employMapper.upDateSection(employPojo);
    }
}
