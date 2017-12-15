package com.neuedu.mapper;

import com.neuedu.pojo.PositionPojo;


import java.util.ArrayList;
import java.util.List;

public interface PositionMapper {
    public void add(PositionPojo position);
    public List<PositionPojo> queryAll();

    public void dele(String[] positionSno);

    public ArrayList<PositionPojo> query(PositionPojo position);
}
