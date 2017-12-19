package com.neuedu.pojo;

import java.util.Date;

/**
 * 描述:
 *
 * @outhor hokitlee
 * @create 2017-12-19 9:25
 */
public class SectionMovePojo {
    private int id;
    /*员工号*/
    private int eno;
    /*姓名*/
    private String name;
    /*调动原因*/
    private String moveCause;
    /*调动日期*/
    private Date moveDate;
    /*原部门*/
    private String oldPosition;
    /*调动后部门*/
    private String movePosition;
    /*调转类型*/
    private String moveType;
    /*备注*/
    private String remark;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEno() {
        return eno;
    }

    public void setEno(int eno) {
        this.eno = eno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMoveCause() {
        return moveCause;
    }

    public void setMoveCause(String moveCause) {
        this.moveCause = moveCause;
    }

    public Date getMoveDate() {
        return moveDate;
    }

    public void setMoveDate(Date moveDate) {
        this.moveDate = moveDate;
    }

    public String getOldPosition() {
        return oldPosition;
    }

    public void setOldPosition(String oldPosition) {
        this.oldPosition = oldPosition;
    }

    public String getMovePosition() {
        return movePosition;
    }

    public void setMovePosition(String movePosition) {
        this.movePosition = movePosition;
    }

    public String getMoveType() {
        return moveType;
    }

    public void setMoveType(String moveType) {
        this.moveType = moveType;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}