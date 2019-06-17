package com.tkzSalary.service;

import java.util.List;

import com.tkzSalary.pojo.Detail;

public interface DetailService {

	List<Detail> getDetailList();

	int insert(Detail detail);

	Detail getDetailidById(Integer detailid);

	int deleteByPrimaryKey(Integer detailid);

	int updateByPrimaryKey(Detail detail);

}
