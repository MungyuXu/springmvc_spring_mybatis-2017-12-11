package com.neuedu.pojo;

import java.util.Date;

public class PositionMovePojo {
    private int id;
    private Date q_start;
    private Date end;
    private int q_eno;
    private  String q_ename;
    private  String q_method;
    private  String pmove_position;
    private String pmove_type;
    private  String pmove_cause;
    private  Date pmove_date;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getQ_start() {
        return q_start;
    }

    public void setQ_start(Date q_start) {
        this.q_start = q_start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public int getQ_eno() {
        return q_eno;
    }

    public void setQ_eno(int q_eno) {
        this.q_eno = q_eno;
    }

    public String getQ_ename() {
        return q_ename;
    }

    public void setQ_ename(String q_ename) {
        this.q_ename = q_ename;
    }

    public String getQ_method() {
        return q_method;
    }

    public void setQ_method(String q_method) {
        this.q_method = q_method;
    }

    public String getPmove_position() {
        return pmove_position;
    }

    public void setPmove_position(String pmove_position) {
        this.pmove_position = pmove_position;
    }

    public String getPmove_type() {
        return pmove_type;
    }

    public void setPmove_type(String pmove_type) {
        this.pmove_type = pmove_type;
    }

    public String getPmove_cause() {
        return pmove_cause;
    }

    public void setPmove_cause(String pmove_cause) {
        this.pmove_cause = pmove_cause;
    }

    public Date getPmove_date() {
        return pmove_date;
    }

    public void setPmove_date(Date pmove_date) {
        this.pmove_date = pmove_date;
    }
}
