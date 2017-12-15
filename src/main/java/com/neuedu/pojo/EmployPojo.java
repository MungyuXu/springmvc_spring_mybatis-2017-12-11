package com.neuedu.pojo;

import java.util.Date;

public class EmployPojo {
    private int eno;
    public String ename;
    private String egender;
    private Date ebdate;
    private int eid;
    private  String esection;
    private  String eposition;
    private  String etype;
    private  String efrom;
    private  String e_entrydate;
    private  String eattenddate;

    public int getEno() {
        return eno;
    }

    public void setEno(int eno) {
        this.eno = eno;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String empname) {
        this.ename = ename;
    }

    public String getEgender() {
        return egender;
    }

    public void setEgender(String egender) {
        this.egender = egender;
    }

    public Date getEbdate() {
        return ebdate;
    }

    public void setEbdate(Date ebdate) {
        this.ebdate = ebdate;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEsection() {
        return esection;
    }

    public void setEsection(String esection) {
        this.esection = esection;
    }

    public String getEposition() {
        return eposition;
    }

    public void setEposition(String eposition) {
        this.eposition = eposition;
    }

    public String getEtype() {
        return etype;
    }

    public void setEtype(String etype) {
        this.etype = etype;
    }

    public String getEfrom() {
        return efrom;
    }

    public void setEfrom(String efrom) {
        this.efrom = efrom;
    }

    public String getE_entrydate() {
        return e_entrydate;
    }

    public void setE_entrydate(String e_entrydate) {
        this.e_entrydate = e_entrydate;
    }

    public String getEattenddate() {
        return eattenddate;
    }

    public void setEattenddate(String eattenddate) {
        this.eattenddate = eattenddate;
    }

}