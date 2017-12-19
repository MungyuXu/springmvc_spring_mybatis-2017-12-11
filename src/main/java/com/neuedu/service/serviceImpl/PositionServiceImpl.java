package com.neuedu.service.serviceImpl;

import com.neuedu.mapper.PositionMapper;
import com.neuedu.pojo.PositionPojo;
import com.neuedu.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PositionServiceImpl implements PositionService {
    //自动装配
    @Autowired
    PositionMapper positionMapper;

    //岗位增加
    @Override
    public int add(PositionPojo position) {
        positionMapper.add(position);
        return 0;
    }

    //岗位查询
    @Override
    public List<PositionPojo> queryAll() {
        return positionMapper.queryAll();
    }

    //删除
    @Override
    public void dele(String[] positions) {
        positionMapper.dele(positions);
    }

    @Override
    public ArrayList<PositionPojo> query(PositionPojo position) {
        return positionMapper.query(position);
    }

    //按需查找
    @Override
    public List<PositionPojo> queryByName(PositionPojo position) {
        return positionMapper.queryByName(position);
    }

    //修改
    @Override
    public void update(PositionPojo position) {
        positionMapper.update(position);

    }
}
