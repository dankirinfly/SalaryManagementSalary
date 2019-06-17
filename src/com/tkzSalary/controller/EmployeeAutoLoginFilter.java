package com.tkzSalary.controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.tkzSalary.pojo.Employee;
import com.tkzSalary.service.EmployeeService;

public class EmployeeAutoLoginFilter implements Filter{

	@Autowired EmployeeService employeeService;
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request1 = (HttpServletRequest)request;
		HttpServletResponse response1 =(HttpServletResponse)response;
		String pathString = request1.getServletPath();
		if ("/index.jsp".equals(pathString) || "/font/tologin.action".equals(pathString) || "/font/login.jsp".equals(pathString)) {
			chain.doFilter(request1, response1);
			return;
		}
		 HttpSession session = request1.getSession();
		 String username = (String)session.getAttribute("employeeaccount");
		 String password = (String)session.getAttribute("employeepassword");
		 if(username!=null&&password!=null){
			 Employee employee = new Employee();
			 employee.setEmployeeaccount(username);
			 employee.setEmployeepassword(password);
			 Employee neweEmployee = employeeService.getEmployeeByNameAndPassword(employee);
			 if (neweEmployee != null) {
				 chain.doFilter(request1, response1);
				 return;
			}
		 }
		 username = request1.getParameter("employeeaccount");
		 password = request1.getParameter("employeepassword");
		 if(username!=null&&password!=null){
			 Employee employee = new Employee();
			 employee.setEmployeeaccount(username);
			 employee.setEmployeepassword(password);
			 Employee neweEmployee = employeeService.getEmployeeByNameAndPassword(employee);
			 if (neweEmployee != null) {
				 session.setAttribute("employeeaccount", username);
				 session.setAttribute("employeepassword", password);
				 chain.doFilter(request1, response1);
				 return;
			}
		 }
		 response1.sendRedirect("/tkzSalary/index.jsp");
		 return;
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
		
	}

}
