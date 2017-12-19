package com.neuedu.service.serviceImpl;

import com.neuedu.mapper.SectionMapper;
import com.neuedu.pojo.SectionPojo;
import com.neuedu.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SectionServiceImpl implements SectionService {

    @Autowired
    SectionMapper sectionMapper;

    @Override
    public int add(SectionPojo section) {
        sectionMapper.add(section);
        return 0;
    }

    @Override
    public List<SectionPojo> queryAll() {
        return sectionMapper.queryAll();
    }

    @Override
    public void dele(String[] sections) {
        sectionMapper.dele(sections);
    }

    @Override
    public List<SectionPojo> queryByName(SectionPojo section) {
        return sectionMapper.queryByName(section);
    }

    @Override
    public void upDateById(SectionPojo sectionPojo) {
        sectionMapper.upDateById(sectionPojo);
    }

}