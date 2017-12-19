package com.neuedu.mapper;

import com.neuedu.pojo.EmployPojo;
import com.neuedu.pojo.PositionMovePojo;

import java.util.List;

public interface EmployMapper {
    public void add(EmployPojo employ);
    public List<EmployPojo> queryAll();
    public List<EmployPojo> queryByName(EmployPojo employ);
    public  void update(EmployPojo employ);
    public List<EmployPojo> epmove_queryAll();
//    public List<PositionMovePojo> epmove_queryAll();
}
