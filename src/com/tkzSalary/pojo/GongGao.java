package com.tkzSalary.pojo;



public class GongGao {
    private Integer gonggaoid;

    private String gonggaotitle;

    private String gonggaoneirong;

    private String gonggaodate;

    public Integer getGonggaoid() {
        return gonggaoid;
    }

    public void setGonggaoid(Integer gonggaoid) {
        this.gonggaoid = gonggaoid;
    }

    public String getGonggaotitle() {
        return gonggaotitle;
    }

    public void setGonggaotitle(String gonggaotitle) {
        this.gonggaotitle = gonggaotitle == null ? null : gonggaotitle.trim();
    }

    public String getGonggaoneirong() {
        return gonggaoneirong;
    }

    public void setGonggaoneirong(String gonggaoneirong) {
        this.gonggaoneirong = gonggaoneirong == null ? null : gonggaoneirong.trim();
    }

    public String getGonggaodate() {
        return gonggaodate;
    }

    public void setGonggaodate(String gonggaodate) {
        this.gonggaodate = gonggaodate;
    }
}