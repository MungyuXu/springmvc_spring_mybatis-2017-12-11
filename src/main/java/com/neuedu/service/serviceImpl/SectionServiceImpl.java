package com.neuedu.service.serviceImpl;

import com.neuedu.mapper.SectionMapper;
import com.neuedu.pojo.SectionPojo;
import com.neuedu.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SectionServiceImpl implements SectionService {

    @Autowired
    SectionMapper sectionMapper;

    @Override
    public int add(SectionPojo section) {
        sectionMapper.add(section);
        return 0;
    }
}