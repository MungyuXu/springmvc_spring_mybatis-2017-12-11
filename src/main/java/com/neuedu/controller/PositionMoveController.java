package com.neuedu.controller;

import com.neuedu.pojo.PositionMovePojo;
import com.neuedu.pojo.PositionPojo;
import com.neuedu.service.PositionMoveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value="html")
public class PositionMoveController {
    @Autowired
    PositionMoveService positionMoveService;

    @RequestMapping(value = "position_move_queryAll")
    public  String queryAll(Model model){
        List<PositionMovePojo> positionMoveList;
        positionMoveList =positionMoveService.queryAll();
        model.addAttribute("positionMoveList",positionMoveList);
        return "html/position_move_search";
    }
    @RequestMapping(value = "position_move_queryByName")
    public @ResponseBody List<PositionMovePojo> queryByName(@RequestBody PositionMovePojo positionMove){
        return positionMoveService.queryByName(positionMove);
    }

}
