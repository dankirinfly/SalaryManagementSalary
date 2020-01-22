package com.tkzSalary.pojo;


public class Detail {
	//详情id
    private Integer detailid;
    //员工id
    private Integer employeeid;
    //勤務時間
    private String worktime;
    //支給時間
    private String paytime;
    //労働日數
    private Float workdays;
    //出勤日数
    private Float attendancedays;
    //欠勤
    private Float absencedays;
    //不就労
    private Float unemployeddays;
    //备用假期
    private Float spareholiday;
    //使用假期
    private Float usedholiday;
    //平日普通
    private Float normalovertime;
    //休日普通
    private Float specialovertime;
    //基本給
    private Integer basicpay;
    //非定期料金
    private Integer trafficexpense;
    //総支给額
    private Integer totalsalary;
    //健康保險
    private Integer healthinsurance;
    //介護保險
    private Integer careinsurance;
    //厚生年金
    private Integer welfarepension;
    //年金基金
    private Integer pensionfund;
    //社保調整
    private Integer adjustsocial;
    //雇佣保險
    private Integer employinsurance;
    //法定控除計
    private Integer legaldeduction;
    //所得税
    private Integer incometax;
    //住民税
    private Integer inlandtax;
    //扶養
    private Integer dependnumber;
    //控除合計
    private Integer totaldeduction;
    //调整
    private Integer adjustsalary;
    //控除総計
    private Integer grandtotaldeduction;
    //課税総額
    private Integer totaltaxation;
    //非課税総額
    private Integer totaltaxexempt;
    //定期通勤料
    private Integer monthtrafficexpense;
    //差引支給額
    private Integer substractionsupply;
    //年末調整額
    private Integer yearendadjustment;
    //特別奨励金
    private Integer specialbounty;
    //業績達成金
    private Integer achievementmoney;

	public Integer getDetailid() {
        return detailid;
    }

    public void setDetailid(Integer detailid) {
        this.detailid = detailid;
    }

    public Integer getEmployeeid() {
        return employeeid;
    }

    public void setEmployeeid(Integer employeeid) {
        this.employeeid = employeeid;
    }

    public String getWorktime() {
        return worktime;
    }

    public void setWorktime(String worktime) {
        this.worktime = worktime;
    }

    public String getPaytime() {
        return paytime;
    }

    public void setPaytime(String paytime) {
        this.paytime = paytime;
    }

    public Float getWorkdays() {
        return workdays;
    }

    public void setWorkdays(Float workdays) {
        this.workdays = workdays;
    }

    public Float getAttendancedays() {
        return attendancedays;
    }

    public void setAttendancedays(Float attendancedays) {
        this.attendancedays = attendancedays;
    }

    public Float getAbsencedays() {
        return absencedays;
    }

    public void setAbsencedays(Float absencedays) {
        this.absencedays = absencedays;
    }

    public Float getUnemployeddays() {
        return unemployeddays;
    }

    public void setUnemployeddays(Float unemployeddays) {
        this.unemployeddays = unemployeddays;
    }

    public Float getSpareholiday() {
        return spareholiday;
    }

    public void setSpareholiday(Float spareholiday) {
        this.spareholiday = spareholiday;
    }

    public Float getUsedholiday() {
        return usedholiday;
    }

    public void setUsedholiday(Float usedholiday) {
        this.usedholiday = usedholiday;
    }

    public Float getNormalovertime() {
        return normalovertime;
    }

    public void setNormalovertime(Float normalovertime) {
        this.normalovertime = normalovertime;
    }

    public Float getSpecialovertime() {
        return specialovertime;
    }

    public void setSpecialovertime(Float specialovertime) {
        this.specialovertime = specialovertime;
    }

    public Integer getBasicpay() {
        return basicpay;
    }

    public void setBasicpay(Integer basicpay) {
        this.basicpay = basicpay;
    }

    public Integer getTrafficexpense() {
        return trafficexpense;
    }

    public void setTrafficexpense(Integer trafficexpense) {
        this.trafficexpense = trafficexpense;
    }

    public Integer getTotalsalary() {
        return totalsalary;
    }

    public void setTotalsalary(Integer totalsalary) {
        this.totalsalary = totalsalary;
    }

    public Integer getHealthinsurance() {
        return healthinsurance;
    }

    public void setHealthinsurance(Integer healthinsurance) {
        this.healthinsurance = healthinsurance;
    }

    public Integer getCareinsurance() {
        return careinsurance;
    }

    public void setCareinsurance(Integer careinsurance) {
        this.careinsurance = careinsurance;
    }

    public Integer getWelfarepension() {
        return welfarepension;
    }

    public void setWelfarepension(Integer welfarepension) {
        this.welfarepension = welfarepension;
    }

    public Integer getPensionfund() {
        return pensionfund;
    }

    public void setPensionfund(Integer pensionfund) {
        this.pensionfund = pensionfund;
    }

    public Integer getAdjustsocial() {
        return adjustsocial;
    }

    public void setAdjustsocial(Integer adjustsocial) {
        this.adjustsocial = adjustsocial;
    }

    public Integer getEmployinsurance() {
        return employinsurance;
    }

    public void setEmployinsurance(Integer employinsurance) {
        this.employinsurance = employinsurance;
    }

    public Integer getLegaldeduction() {
        return legaldeduction;
    }

    public void setLegaldeduction(Integer legaldeduction) {
        this.legaldeduction = legaldeduction;
    }

    public Integer getIncometax() {
        return incometax;
    }

    public void setIncometax(Integer incometax) {
        this.incometax = incometax;
    }

    public Integer getInlandtax() {
        return inlandtax;
    }

    public void setInlandtax(Integer inlandtax) {
        this.inlandtax = inlandtax;
    }

    public Integer getDependnumber() {
        return dependnumber;
    }

    public void setDependnumber(Integer dependnumber) {
        this.dependnumber = dependnumber;
    }

    public Integer getTotaldeduction() {
        return totaldeduction;
    }

    public void setTotaldeduction(Integer totaldeduction) {
        this.totaldeduction = totaldeduction;
    }

    public Integer getAdjustsalary() {
        return adjustsalary;
    }

    public void setAdjustsalary(Integer adjustsalary) {
        this.adjustsalary = adjustsalary;
    }

    public Integer getGrandtotaldeduction() {
        return grandtotaldeduction;
    }

    public void setGrandtotaldeduction(Integer grandtotaldeduction) {
        this.grandtotaldeduction = grandtotaldeduction;
    }

    public Integer getTotaltaxation() {
        return totaltaxation;
    }

    public void setTotaltaxation(Integer totaltaxation) {
        this.totaltaxation = totaltaxation;
    }

    public Integer getTotaltaxexempt() {
        return totaltaxexempt;
    }

    public void setTotaltaxexempt(Integer totaltaxexempt) {
        this.totaltaxexempt = totaltaxexempt;
    }

    public Integer getMonthtrafficexpense() {
        return monthtrafficexpense;
    }

    public void setMonthtrafficexpense(Integer monthtrafficexpense) {
        this.monthtrafficexpense = monthtrafficexpense;
    }

    public Integer getSubstractionsupply() {
        return substractionsupply;
    }

    public void setSubstractionsupply(Integer substractionsupply) {
        this.substractionsupply = substractionsupply;
    }

	public Integer getYearendadjustment() {
		return yearendadjustment;
	}

	public void setYearendadjustment(Integer yearendadjustment) {
		this.yearendadjustment = yearendadjustment;
	}

	public Integer getSpecialbounty() {
		return specialbounty;
	}

	public void setSpecialbounty(Integer specialbounty) {
		this.specialbounty = specialbounty;
	}

	public Integer getAchievementmoney() {
		return achievementmoney;
	}

	public void setAchievementmoney(Integer achievementmoney) {
		this.achievementmoney = achievementmoney;
	}
    
}