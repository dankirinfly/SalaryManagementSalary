package com.tkzSalary.dao;

import java.util.List;

import com.tkzSalary.pojo.Employee;

public interface EmployeeMapper {
    int deleteByPrimaryKey(Integer employeeid);

    int insert(Employee record);

    int insertSelective(Employee record);

    Employee selectByPrimaryKey(Integer employeeid);

    int updateByPrimaryKeySelective(Employee record);

    int updateByPrimaryKey(Employee record);

	List<Employee> findEmployeeList();

	Employee getEmployeeByNameAndPassword(Employee employee);
}