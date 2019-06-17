package com.tkzSalary.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.tkzSalary.dao.GongGaoMapper;
import com.tkzSalary.pojo.GongGao;
import com.tkzSalary.service.GongGaoService;

@Service
public class GongGaoServiceImpl implements GongGaoService {
	@Autowired
	private GongGaoMapper gongGaoMapper;
	@Override
	public int insert(GongGao gonggao) {
		// TODO Auto-generated method stub
		return gongGaoMapper.insert(gonggao);
	}
	@Override
	public List<GongGao> findGongGaoList() {
		// TODO Auto-generated method stub
		return gongGaoMapper.findGongGaoList();
	}
	@Override
	public GongGao selectByPrimaryKey(Integer gonggaoid) {
		// TODO Auto-generated method stub
		return gongGaoMapper.selectByPrimaryKey(gonggaoid);
	}
	@Override
	public int deleteByPrimaryKey(Integer gonggaoid) {
		// TODO Auto-generated method stub
		return gongGaoMapper.deleteByPrimaryKey(gonggaoid);
	}
	@Override
	public int updateByPrimaryKey(GongGao record) {
		// TODO Auto-generated method stub
		return gongGaoMapper.updateByPrimaryKey(record);
	}

}
