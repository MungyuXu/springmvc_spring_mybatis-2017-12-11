package com.neuedu.service.serviceImpl;

import com.neuedu.pojo.PositionPojo;
import com.neuedu.service.PositionService;
import org.springframework.stereotype.Service;

@Service
public class PositionServiceImpl implements PositionService {
    public  PositionServiceImpl(){
        System.out.println("positionserviceimpl");
    }
    @Override
    public int add(PositionPojo position) {
        System.out.println("add");
        return 0;
    }
}
