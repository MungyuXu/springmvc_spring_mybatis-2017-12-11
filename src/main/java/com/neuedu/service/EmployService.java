package com.neuedu.service;

import com.neuedu.pojo.EmployPojo;

import java.util.List;

public interface EmployService {
    public int add(EmployPojo employ);
    public List<EmployPojo> queryAll();
    public List<EmployPojo> queryByName(EmployPojo employ);
    public  void update(EmployPojo employ);
    public List<EmployPojo> epmove_queryAll();
}
