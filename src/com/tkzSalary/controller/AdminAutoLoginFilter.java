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

import com.tkzSalary.pojo.Admin;
import com.tkzSalary.service.AdminService;

public class AdminAutoLoginFilter implements Filter{

	@Autowired AdminService adminService;
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
		if ("/admin/index.jsp".equals(pathString) || "/admin/tologin.action".equals(pathString) || "/admin/login.jsp".equals(pathString) || "/admin/toadminxiugai.action".equals(pathString)|| "/admin/adminxiugai.action".equals(pathString)) {
			chain.doFilter(request1, response1);
			return;
		}
		 HttpSession session = request1.getSession();
		 String username = (String)session.getAttribute("adminaccount");
		 String password = (String)session.getAttribute("adminpassword");
		 if(username!=null&&password!=null){
			 Admin admin = new Admin();
			 admin.setAdminaccount(username);
			 admin.setAdminpassword(password);
			 Admin newadAdmin = adminService.getAdminByNameAndPassword(admin);
			 if (newadAdmin != null) {
				 chain.doFilter(request1, response1);
				 return;
			}
		 }
		 username = request1.getParameter("adminaccount");
		 password = request1.getParameter("adminpassword");
		 if(username!=null&&password!=null){
			 Admin admin = new Admin();
			 admin.setAdminaccount(username);
			 admin.setAdminpassword(password);
			 Admin newadAdmin = adminService.getAdminByNameAndPassword(admin);
			 if (newadAdmin != null) {
				 session.setAttribute("adminid", newadAdmin.getAdminid());
				 session.setAttribute("adminaccount", username);
				 session.setAttribute("adminpassword", password);
				 chain.doFilter(request1, response1);
				 return;
			}
		 }
		 response1.sendRedirect("/tkzSalary/admin/index.jsp");
		 return;
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
		
	}

}
