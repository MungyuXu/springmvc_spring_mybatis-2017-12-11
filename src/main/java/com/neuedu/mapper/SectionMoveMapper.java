package com.neuedu.mapper;

import com.neuedu.pojo.SectionMovePojo;

import java.util.List;

public interface SectionMoveMapper {
    public void add(SectionMovePojo sectionMovePojo);
    public List<SectionMovePojo> queryAll();
    public List<SectionMovePojo> queryById(SectionMovePojo sectionMovePojo);
}
