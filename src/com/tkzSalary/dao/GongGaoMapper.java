package com.tkzSalary.dao;

import java.util.List;

import com.tkzSalary.pojo.GongGao;

public interface GongGaoMapper {
    int deleteByPrimaryKey(Integer gonggaoid);

    int insert(GongGao record);

    int insertSelective(GongGao record);

    GongGao selectByPrimaryKey(Integer gonggaoid);
    
    List<GongGao> findGongGaoList();

    int updateByPrimaryKeySelective(GongGao record);

    int updateByPrimaryKey(GongGao record);
}