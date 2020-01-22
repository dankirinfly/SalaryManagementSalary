package com.tkzSalary.pojo;


public class Traffic {
	//交通id
    private Integer trafficid;
    //员工id
    private Integer employeeid;
    //交通费用
    private Integer trafficexpense;
    //交通费用类型
    private Integer trafficexpensetype;
    //交通时间
    private String traffictime;
    //交通路段
    private String trafficsection;
    //验证状态
    private Integer verifystatus;
    //失败的原因
    private String failedreason;

    public Integer getTrafficid() {
        return trafficid;
    }

    public void setTrafficid(Integer trafficid) {
        this.trafficid = trafficid;
    }

    public Integer getEmployeeid() {
        return employeeid;
    }

    public void setEmployeeid(Integer employeeid) {
        this.employeeid = employeeid;
    }

    public Integer getTrafficexpense() {
        return trafficexpense;
    }

    public void setTrafficexpense(Integer trafficexpense) {
        this.trafficexpense = trafficexpense;
    }

    public Integer getTrafficexpensetype() {
        return trafficexpensetype;
    }

    public void setTrafficexpensetype(Integer trafficexpensetype) {
        this.trafficexpensetype = trafficexpensetype;
    }

    public String getTraffictime() {
        return traffictime;
    }

    public void setTraffictime(String traffictime) {
        this.traffictime = traffictime;
    }

    public String getTrafficsection() {
        return trafficsection;
    }

    public void setTrafficsection(String trafficsection) {
        this.trafficsection = trafficsection == null ? null : trafficsection.trim();
    }

    public Integer getVerifystatus() {
        return verifystatus;
    }

    public void setVerifystatus(Integer verifystatus) {
        this.verifystatus = verifystatus;
    }

    public String getFailedreason() {
        return failedreason;
    }

    public void setFailedreason(String failedreason) {
        this.failedreason = failedreason == null ? null : failedreason.trim();
    }
}