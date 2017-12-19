package com.neuedu.service.serviceImpl;

import com.neuedu.mapper.SectionMapper;
import com.neuedu.pojo.SectionPojo;
import com.neuedu.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 描述:
 *部门信息服务实现类
 * @outhor hokitlee
 * @create 2017-12-19 9:25
 */
@Service
public class SectionServiceImpl implements SectionService {

    @Autowired
    SectionMapper sectionMapper;

    @Override
    public int add(SectionPojo section) {
        sectionMapper.add(section);
        return 0;
    }

    /*查询所有*/
    @Override
    public List<SectionPojo> queryAll() {
        return sectionMapper.queryAll();
    }

    /*删除*/
    @Override
    public void dele(String[] sections) {
        sectionMapper.dele(sections);
    }

    /*按信息查询*/
    @Override
    public List<SectionPojo> queryByName(SectionPojo section) {
        return sectionMapper.queryByName(section);
    }

    /*更新*/
    @Override
    public void upDateById(SectionPojo sectionPojo) {
        sectionMapper.upDateById(sectionPojo);
    }

}