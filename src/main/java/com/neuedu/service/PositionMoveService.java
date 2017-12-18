package com.neuedu.service;

import com.neuedu.pojo.PositionMovePojo;

import java.util.List;


public interface PositionMoveService {
    public List<PositionMovePojo> queryAll();
    public List<PositionMovePojo> queryByName(PositionMovePojo positionMove);
    public  void update(PositionMovePojo positionMove);
}
