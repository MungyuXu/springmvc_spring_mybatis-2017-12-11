package com.neuedu.mapper;

import com.neuedu.pojo.SectionPojo;

import java.util.List;

public interface  SectionMapper {
    public void add(SectionPojo section);
    public List<SectionPojo> queryAll();
    public void dele(String[] sectionSno);
}
