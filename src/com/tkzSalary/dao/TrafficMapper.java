package com.tkzSalary.dao;

import java.util.List;

import com.tkzSalary.pojo.Traffic;

public interface TrafficMapper {
    int deleteByPrimaryKey(Integer trafficid);

    int insert(Traffic record);

    int insertSelective(Traffic record);

    Traffic selectByPrimaryKey(Integer trafficid);

    int updateByPrimaryKeySelective(Traffic record);

    int updateByPrimaryKey(Traffic record);

	List<Traffic> findTrafficList();
}