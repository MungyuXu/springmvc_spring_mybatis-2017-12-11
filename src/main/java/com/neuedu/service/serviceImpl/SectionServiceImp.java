package com.neuedu.service.serviceImpl;

import com.neuedu.service.SectionService;
import org.springframework.stereotype.Service;

/**
 * 描述:
 *
 * @outhor hokitlee
 * @create 2017-12-13 9:48
 */
@Service
public class SectionServiceImp implements SectionService{

    @Override
    public void add() {
        System.out.println("section add");
    }
}