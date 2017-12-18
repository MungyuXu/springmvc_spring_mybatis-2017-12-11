package com.neuedu.service;

import com.neuedu.pojo.SectionPojo;
import org.springframework.stereotype.Service;

import java.util.List;


public interface SectionService {
    public int add(SectionPojo section);
    public List<SectionPojo> queryAll();
    public void dele(String[] sections);
    public List<SectionPojo> queryByName(SectionPojo section);
    public void upDateById(SectionPojo sectionPojo);
}
