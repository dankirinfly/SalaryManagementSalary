package com.tkzSalary.service;

import java.util.List;

import com.tkzSalary.pojo.Traffic;

public interface TrafficService {

	List<Traffic> getTrafficList();

	Traffic getTrafficById(Integer trafficid);

	int deleteByPrimaryKey(Integer trafficid);

	int updateByPrimaryKey(Traffic traffic);

	List<Traffic> getTrafficListByStatus();
	
	int insert(Traffic traffic);

}
