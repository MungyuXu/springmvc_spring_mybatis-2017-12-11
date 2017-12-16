package com.neuedu.service;

import com.neuedu.pojo.PositionPojo;

import java.util.ArrayList;
import java.util.List;


public interface PositionService {
    public int add(PositionPojo position);
    public List<PositionPojo> queryAll();
    public void dele(String[] positions);
    public ArrayList<PositionPojo> query(PositionPojo position);
    public List<PositionPojo> queryByName(PositionPojo section);
}
