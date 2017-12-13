package com.neuedu.pojo;

import java.util.Date;

/**
 * 描述:
 *
 * @outhor hokitlee
 * @create 2017-12-12 14:01
 */
public class SectionPojo {
    private int sno;
    private String sname;
    private String stype;
    private String sphone;
    private String sfax;
    private String supper;
    private Date s_setdate;
    private String sdes;

    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getStype() {
        return stype;
    }

    public void setStype(String stype) {
        this.stype = stype;
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }

    public String getSfax() {
        return sfax;
    }

    public void setSfax(String sfax) {
        this.sfax = sfax;
    }

    public String getSupper() {
        return supper;
    }

    public void setSupper(String supper) {
        this.supper = supper;
    }

    public Date getS_setdate() {
        return s_setdate;
    }

    public void setS_setdate(Date s_setdate) {
        this.s_setdate = s_setdate;
    }

    public String getSdes() {
        return sdes;
    }

    public void setSdes(String sdes) {
        this.sdes = sdes;
    }
}