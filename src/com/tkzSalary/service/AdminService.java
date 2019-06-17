package com.tkzSalary.service;

import com.tkzSalary.pojo.Admin;

public interface AdminService {
	Admin getAdminByNameAndPassword(Admin admin);

	int updateByPrimaryKey(Admin newadAdmin);
}
