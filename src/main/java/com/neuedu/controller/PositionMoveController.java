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
@RequestMapping(value = "html")
public class PositionMoveController {
    //自动装配
    @Autowired
    PositionMoveService positionMoveService;

    //查询已调动岗位员工
    @RequestMapping(value = "position_move_queryAll")
    public String queryAll(Model model) {
        List<PositionMovePojo> positionMoveList;
        positionMoveList = positionMoveService.queryAll();
        model.addAttribute("positionMoveList", positionMoveList);
        return "html/position_move_search";
    }

    //按xx查询已调动岗位员工
    @RequestMapping(value = "position_move_queryByName")
    public @ResponseBody
    List<PositionMovePojo> queryByName(@RequestBody PositionMovePojo positionMove) {
        List<PositionMovePojo> positionMovePojoList=positionMoveService.queryByName(positionMove);
        return positionMoveService.queryByName(positionMove);
    }

    //调动岗位的加到岗位调动表
    @RequestMapping(value = "pmoveAdd")
    public String add(PositionMovePojo positionMove) {
        positionMoveService.add(positionMove);
        return "redirect:epmove_queryAll.do";
    }

    //岗位调动表更新
    @RequestMapping(value = "pmoveUpdate")
    public String update(PositionMovePojo positionMove) {
        positionMoveService.update(positionMove);
        return "redirect:position_move_queryAll.do";
    }

}
