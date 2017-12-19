package com.neuedu.service.serviceImpl;

import com.neuedu.mapper.PositionMoveMapper;
import com.neuedu.pojo.PositionMovePojo;
import com.neuedu.pojo.PositionPojo;
import com.neuedu.service.PositionMoveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PositionMoveServiceImpl implements PositionMoveService {
    //自动装配
    @Autowired
    PositionMoveMapper posotionMoveMapper;

    //岗位调动查询
    @Override
    public List<PositionMovePojo> queryAll() {
        return posotionMoveMapper.queryAll();
    }

    //按需查询
    @Override
    public List<PositionMovePojo> queryByName(PositionMovePojo positionMove) {
        return posotionMoveMapper.queryByName(positionMove);
    }

    //修改
    @Override
    public void update(PositionMovePojo positionMove) {
        posotionMoveMapper.update(positionMove);
    }

    //增加人员到岗位调动表中
    @Override
    public int add(PositionMovePojo positionMove) {
        posotionMoveMapper.add(positionMove);
        return 0;
    }

}
