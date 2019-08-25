package com.tkzSalary.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.hamcrest.SelfDescribing;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tkzSalary.dao.TrafficMapper;
import com.tkzSalary.pojo.Traffic;
import com.tkzSalary.service.TrafficService;

@Service
public class TrafficServiceImpl implements TrafficService {
	@Autowired
	private TrafficMapper trafficMapper;
	@Override
	public List<Traffic> getTrafficList() {
		// TODO Auto-generated method stub
		List<Traffic> list = trafficMapper.findTrafficList();
		Collections.reverse(list);
		return list;
	}
	@Override
	public Traffic getTrafficById(Integer trafficid) {
		// TODO Auto-generated method stub
		return trafficMapper.selectByPrimaryKey(trafficid);
	}
	@Override
	public int deleteByPrimaryKey(Integer trafficid) {
		// TODO Auto-generated method stub
		return trafficMapper.deleteByPrimaryKey(trafficid);
	}
	@Override
	public int updateByPrimaryKey(Traffic traffic) {
		// TODO Auto-generated method stub
		return trafficMapper.updateByPrimaryKey(traffic);
	}
	@Override
	public List<Traffic> getTrafficListByStatus() {
		// TODO Auto-generated method stub
		List<Traffic> list = trafficMapper.findTrafficList();
		List<Traffic> list1 =  new ArrayList<Traffic>();
		for (Traffic traffic : list) {
			if (traffic.getVerifystatus() == 1) {
				list1.add(traffic);
			}
		}
		Collections.reverse(list1);
		return list1;
	}
	@Override
	public int insert(Traffic traffic) {
		// TODO Auto-generated method stub
		return trafficMapper.insert(traffic);
	}
	

}
