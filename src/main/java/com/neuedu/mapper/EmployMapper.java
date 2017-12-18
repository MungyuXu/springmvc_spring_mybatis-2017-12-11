package com.neuedu.mapper;

import com.neuedu.pojo.EmployPojo;

import java.util.List;

public interface EmployMapper {
    public void add(EmployPojo employ);
    public List<EmployPojo> queryAll();
    public List<EmployPojo> queryByName(EmployPojo employ);
    public  void update(EmployPojo employ);
}
