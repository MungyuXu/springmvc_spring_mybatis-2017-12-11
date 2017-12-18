package com.neuedu.service.serviceImpl;

import com.neuedu.mapper.PositionMoveMapper;
import com.neuedu.pojo.PositionMovePojo;
import com.neuedu.service.PositionMoveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PositionMoveServiceImpl implements PositionMoveService {

    @Autowired
    PositionMoveMapper posotionMoveMapper;

    @Override
    public List<PositionMovePojo> queryAll() {
        return posotionMoveMapper.queryAll();
    }

    @Override
    public List<PositionMovePojo> queryByName(PositionMovePojo positionMove) {
        return posotionMoveMapper.queryByName(positionMove);
    }
    @Override
    public  void update(PositionMovePojo positionMove){
        posotionMoveMapper.update(positionMove);

    }
}
