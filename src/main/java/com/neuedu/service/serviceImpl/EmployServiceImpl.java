package com.neuedu.service.serviceImpl;

import com.neuedu.mapper.EmployMapper;
import com.neuedu.pojo.EmployPojo;

import com.neuedu.service.EmployService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployServiceImpl implements EmployService {

    @Autowired
    EmployMapper employMapper;

    @Override
    public int add(EmployPojo employ) {
        employMapper.add(employ);
        return 0;
    }

    @Override
    public List<EmployPojo> queryAll() {
        return employMapper.queryAll();
    }

    @Override
    public List<EmployPojo> queryByName(EmployPojo employ) {
        return employMapper.queryByName(employ);
    }
    @Override
    public  void update(EmployPojo employ){
        employMapper.update(employ);

    }
}
