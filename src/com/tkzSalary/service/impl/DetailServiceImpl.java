package com.tkzSalary.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tkzSalary.dao.DetailMapper;
import com.tkzSalary.pojo.Detail;
import com.tkzSalary.service.DetailService;

@Service
public class DetailServiceImpl implements DetailService {
	@Autowired
	private DetailMapper detailMapper;
	@Override
	public List<Detail> getDetailList() {
		List<Detail> list = detailMapper.findDetailList();
		 Collections.reverse(list);
		return list;
	}
	@Override
	public int insert(Detail detail) {
		
		return detailMapper.insert(detail);
	}
	@Override
	public Detail getDetailidById(Integer detailid) {
		// TODO Auto-generated method stub
		return detailMapper.selectByPrimaryKey(detailid);
	}
	@Override
	public int deleteByPrimaryKey(Integer detailid) {
		// TODO Auto-generated method stub
		return detailMapper.deleteByPrimaryKey(detailid);
	}
	@Override
	public int updateByPrimaryKey(Detail detail) {
		// TODO Auto-generated method stub
		return detailMapper.updateByPrimaryKey(detail);
	}

}
