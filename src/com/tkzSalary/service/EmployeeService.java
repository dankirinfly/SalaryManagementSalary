package com.tkzSalary.service;

import java.util.List;

import com.tkzSalary.pojo.Employee;

public interface EmployeeService {

	List<Employee> getEmployeeList();

	int insert(Employee employee);

	Employee getEmployeeById(Integer employeeid);

	int deleteByPrimaryKey(Integer employeeid);

	int updateByPrimaryKey(Employee employee);

	Employee getEmployeeByNameAndPassword(Employee employee);

}
