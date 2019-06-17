package com.tkzSalary.service;

import java.util.List;

import com.tkzSalary.pojo.GongGao;

public interface GongGaoService {
	
	int insert(GongGao gonggao);
	
	 List<GongGao> findGongGaoList();
	 
	 GongGao selectByPrimaryKey(Integer gonggaoid);
	 
	 int deleteByPrimaryKey(Integer gonggaoid);
	 int updateByPrimaryKey(GongGao record);
}
