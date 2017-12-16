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

    @Autowired
    PositionMapper positionMapper;

    @Override
    public int add(PositionPojo position) {
        positionMapper.add(position);
        return 0;
    }
    @Override
    public List<PositionPojo> queryAll() {
        return positionMapper.queryAll();
    }

    @Override
    public void dele(String[] positions) {
        positionMapper.dele(positions);
    }
@Override
    public ArrayList<PositionPojo> query( PositionPojo position){
        return  positionMapper.query(position);
}

    @Override
    public List<PositionPojo> queryByName(PositionPojo position) {
        return positionMapper.queryByName(position);
    }
}
