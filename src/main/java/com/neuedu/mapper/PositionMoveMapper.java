package com.neuedu.mapper;

import com.neuedu.pojo.PositionMovePojo;

import java.util.List;

public interface PositionMoveMapper {
    public List<PositionMovePojo> queryAll();
    public List<PositionMovePojo> queryByName(PositionMovePojo positionMove);
    public  void update(PositionMovePojo positionMove);
}
