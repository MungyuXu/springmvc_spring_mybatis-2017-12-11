package com.neuedu.service;

import com.neuedu.pojo.SectionMovePojo;

import java.util.List;

public interface SectionMoveService {
    public void add(SectionMovePojo sectionMovePojo);
    public List<SectionMovePojo> queryAll();
    public List<SectionMovePojo> queryById(SectionMovePojo sectionMovePojo);
}
