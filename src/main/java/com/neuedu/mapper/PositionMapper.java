package com.neuedu.mapper;

import com.neuedu.pojo.PositionPojo;
import com.neuedu.pojo.SectionPojo;


import java.util.ArrayList;
import java.util.List;

/**
 * @author hokitlee
 */
public interface PositionMapper {
    public void add(PositionPojo position);
    public List<PositionPojo> queryAll();
    public void dele(String[] positionSno);
    public ArrayList<PositionPojo> query(PositionPojo position);
    public List<PositionPojo> queryByName(PositionPojo position);
    public  void update(PositionPojo position);
}
