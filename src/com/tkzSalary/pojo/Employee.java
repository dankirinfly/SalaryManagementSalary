package com.tkzSalary.pojo;



public class Employee {
	//Ա��id
    private Integer employeeid;
    //����Աid
    private Integer adminid;
    //Ա���˻�
    private String employeeaccount;
    //Ա������
    private String employeepassword;
    //Ա������
    private String employeename;
    //Ա���绰
    private String employeecontact;
    //Ա������
    private String employeebirth;
    //Ա��ע������
    private String employeeregisteredtime;
    //Ա��90����
    private String employeejiushitime;

    public String getEmployeejiushitime() {
		return employeejiushitime;
	}

	public void setEmployeejiushitime(String employeejiushitime) {
		this.employeejiushitime = employeejiushitime;
	}

	public String getEmployeeregisteredtime() {
		return employeeregisteredtime;
	}

	public void setEmployeeregisteredtime(String employeeregisteredtime) {
		this.employeeregisteredtime = employeeregisteredtime;
	}

	public Integer getEmployeeid() {
        return employeeid;
    }

    public void setEmployeeid(Integer employeeid) {
        this.employeeid = employeeid;
    }

    public Integer getAdminid() {
        return adminid;
    }

    public void setAdminid(Integer adminid) {
        this.adminid = adminid;
    }

    public String getEmployeeaccount() {
        return employeeaccount;
    }

    public void setEmployeeaccount(String employeeaccount) {
        this.employeeaccount = employeeaccount == null ? null : employeeaccount.trim();
    }

    public String getEmployeepassword() {
        return employeepassword;
    }

    public void setEmployeepassword(String employeepassword) {
        this.employeepassword = employeepassword == null ? null : employeepassword.trim();
    }

    public String getEmployeename() {
        return employeename;
    }

    public void setEmployeename(String employeename) {
        this.employeename = employeename == null ? null : employeename.trim();
    }

    public String getEmployeecontact() {
        return employeecontact;
    }

    public void setEmployeecontact(String employeecontact) {
        this.employeecontact = employeecontact == null ? null : employeecontact.trim();
    }

    public String getEmployeebirth() {
        return employeebirth;
    }

    public void setEmployeebirth(String employeebirth) {
        this.employeebirth = employeebirth;
    }
}