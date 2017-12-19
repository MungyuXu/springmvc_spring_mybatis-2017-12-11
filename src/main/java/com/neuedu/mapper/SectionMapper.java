package com.neuedu.mapper;

import com.neuedu.pojo.SectionPojo;

import java.util.List;

public interface  SectionMapper {
    public void add(SectionPojo section);
    public List<SectionPojo> queryAll();
    public void dele(String[] sectionSno);
    public List<SectionPojo> queryByName(SectionPojo section);
    public void upDateById(SectionPojo sectionPojo);
}
