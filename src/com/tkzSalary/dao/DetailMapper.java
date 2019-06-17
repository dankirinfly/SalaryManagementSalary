package com.tkzSalary.dao;

import java.util.List;

import com.tkzSalary.pojo.Detail;

public interface DetailMapper {
    int deleteByPrimaryKey(Integer detailid);

    int insert(Detail record);

    int insertSelective(Detail record);

    List<Detail> findDetailList();
    
    Detail selectByPrimaryKey(Integer detailid);

    int updateByPrimaryKeySelective(Detail record);

    int updateByPrimaryKey(Detail record);
}