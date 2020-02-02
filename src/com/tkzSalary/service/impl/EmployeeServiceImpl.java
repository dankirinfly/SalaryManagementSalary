package com.tkzSalary.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tkzSalary.dao.EmployeeMapper;
import com.tkzSalary.pojo.Employee;
import com.tkzSalary.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeMapper employeeMapper;
	@Override
	public List<Employee> getEmployeeList() {
		// TODO Auto-generated method stub
		List<Employee> list = employeeMapper.findEmployeeList();
		 Collections.reverse(list);
		return list;
	}
	@Override
	public int insert(Employee employee) {
		// TODO Auto-generated method stub
		return employeeMapper.insert(employee);
	}
	@Override
	public Employee getEmployeeById(Integer employeeid) {
		// TODO Auto-generated method stub
		return employeeMapper.selectByPrimaryKey(employeeid);
	}
	@Override
	public int deleteByPrimaryKey(Integer employeeid) {
		// TODO Auto-generated method stub
		return employeeMapper.deleteByPrimaryKey(employeeid);
	}
	@Override
	public int updateByPrimaryKey(Employee employee) {
		// TODO Auto-generated method stub
		return employeeMapper.updateByPrimaryKey(employee);
	}
	
	@Override
	public Employee getEmployeeByNameAndPassword(Employee employee) {
		// TODO Auto-generated method stub
		return employeeMapper.getEmployeeByNameAndPassword(employee);
	}
	@Override
	public Employee findEmployeePassword(Integer employeeid) {
		// TODO Auto-generated method stub
		return employeeMapper.findEmployeePassword(employeeid);
	}

}
