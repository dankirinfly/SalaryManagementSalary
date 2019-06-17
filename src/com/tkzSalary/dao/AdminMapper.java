package com.tkzSalary.dao;

import com.tkzSalary.pojo.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer adminid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer adminid);
    
    Admin getAdminByNameAndPassword(Admin admin);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}