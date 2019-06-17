package com.tkzSalary.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tkzSalary.dao.AdminMapper;
import com.tkzSalary.pojo.Admin;
import com.tkzSalary.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public Admin getAdminByNameAndPassword(Admin admin) {
		return adminMapper.getAdminByNameAndPassword(admin);
	}

	@Override
	public int updateByPrimaryKey(Admin newadAdmin) {
		// TODO Auto-generated method stub
		return adminMapper.updateByPrimaryKey(newadAdmin);
	}

}
