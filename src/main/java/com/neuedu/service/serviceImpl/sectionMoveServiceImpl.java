package com.neuedu.service.serviceImpl;

import com.neuedu.mapper.SectionMoveMapper;
import com.neuedu.pojo.SectionMovePojo;
import com.neuedu.service.SectionMoveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 描述:
 *
 * @outhor hokitlee
 * @create 2017-12-19 14:18
 */
@Service
public class sectionMoveServiceImpl implements SectionMoveService {

    @Autowired
    SectionMoveMapper sectionMoveMapper;

    @Override
    public void add(SectionMovePojo sectionMovePojo) {
        sectionMoveMapper.add(sectionMovePojo);
    }

    @Override
    public List<SectionMovePojo> queryAll() {
        return sectionMoveMapper.queryAll();
    }

    @Override
    public List<SectionMovePojo> queryById(SectionMovePojo sectionMovePojo) {
        return sectionMoveMapper.queryById(sectionMovePojo);
    }
}