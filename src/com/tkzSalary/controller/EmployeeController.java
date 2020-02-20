package com.tkzSalary.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tkzSalary.pojo.Detail;
import com.tkzSalary.pojo.Employee;
import com.tkzSalary.pojo.GongGao;
import com.tkzSalary.pojo.Traffic;
import com.tkzSalary.service.DetailService;
import com.tkzSalary.service.EmployeeService;
import com.tkzSalary.service.GongGaoService;
import com.tkzSalary.service.TrafficService;

@Controller
public class EmployeeController {
	@Autowired
	private DetailService detailService;
	@Autowired
	private TrafficService trafficService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private GongGaoService gongGaoService;
	
	@RequestMapping("/font/tologin.action")
	public String tologin(HttpSession httpSession) {
		httpSession.setAttribute("employeeaccount","");
		httpSession.setAttribute("employeepassword","");
		return "font/login";
	}
	@RequestMapping(value="/font/login", method=RequestMethod.POST)
	public ModelAndView login(Employee employee) throws ParseException {
		
		Employee employee2 = employeeService.getEmployeeByNameAndPassword(employee);
		//+90day
//		String time1 = employee2.getEmployeeregisteredtime();
//		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		Date date = format.parse(time1);
//		Calendar c = Calendar.getInstance();
//	    c.setTime(date);
//	    c.add(Calendar.DATE, 90);
//	    Date newDate = c.getTime();
//		String enddate = format.format(newDate);
//		employee.setEmployeejiushitime(enddate);
		ModelAndView modelAndView = new ModelAndView();
		if(employee2 != null) {
			List<GongGao> gongGaoList = gongGaoService.findGongGaoList();
			modelAndView.addObject("gongGaoList", gongGaoList);
//			modelAndView.addObject("enddate", enddate);
			modelAndView.setViewName("font/font");
			return modelAndView;
		}
		modelAndView.setViewName("font/login");
		return modelAndView;
	}
	@RequestMapping(value="/font/gongaosearch")
	public ModelAndView gongaosearch(int gonggaoid) {
		
		
		ModelAndView modelAndView = new ModelAndView();
		
		List<GongGao> gongGaoList = gongGaoService.findGongGaoList();
		modelAndView.addObject("gongGaoList", gongGaoList);
		for (GongGao gongao : gongGaoList) {
			if(gongao.getGonggaoid().equals(gonggaoid)) {
				modelAndView.addObject("gonggao", gongao);
			}
		}
		modelAndView.setViewName("font/gonggaosearch");
		return modelAndView;
	}
	@RequestMapping("/font/font")
	public ModelAndView font() {
		ModelAndView modelAndView = new ModelAndView();
		List<GongGao> gongGaoList = gongGaoService.findGongGaoList();
		modelAndView.addObject("gongGaoList", gongGaoList);
		return modelAndView;
		
	}
	@RequestMapping("/font/shenbao")
	public ModelAndView shenbao(HttpSession httpSession) {
		ModelAndView modelAndView = new ModelAndView();
		String username = (String)httpSession.getAttribute("employeeaccount");
		 String password = (String)httpSession.getAttribute("employeepassword");
		 if(username!=null&&password!=null){
			 Employee employee = new Employee();
			 employee.setEmployeeaccount(username);
			 employee.setEmployeepassword(password);
			 Employee neweEmployee = employeeService.getEmployeeByNameAndPassword(employee);
			 modelAndView.addObject("employee", neweEmployee);
			 modelAndView.setViewName("font/shenbao");
			 return modelAndView;
		 }
		 modelAndView.setViewName("font/login");
		 return modelAndView;
		
	}
	@RequestMapping("/font/search")
	public ModelAndView search(HttpSession httpSession) {
		ModelAndView modelAndView = new ModelAndView();
		String username = (String)httpSession.getAttribute("employeeaccount");
		 String password = (String)httpSession.getAttribute("employeepassword");
		 if(username!=null&&password!=null){
			 Employee employee = new Employee();
			 employee.setEmployeeaccount(username);
			 employee.setEmployeepassword(password);
			 Employee neweEmployee = employeeService.getEmployeeByNameAndPassword(employee);
			 
			 List<Detail> detailList = detailService.getDetailList();
			 List<Detail> newdetailList = new ArrayList<Detail>();
			 for (Detail detail : detailList) {
				if (detail.getEmployeeid().equals(neweEmployee.getEmployeeid())) {
					newdetailList.add(detail);
				}
			}
			 modelAndView.addObject("detailList", newdetailList);
			 
			 List<Traffic> trafficList = trafficService.getTrafficList();
			 List<Traffic> newtrafficList = new ArrayList<Traffic>();
			 for (Traffic traffic : trafficList) {
				if (traffic.getEmployeeid().equals(neweEmployee.getEmployeeid())) {
					newtrafficList.add(traffic);
				}
			}
			 modelAndView.addObject("trafficList", newtrafficList);
			 List<Employee> employeeList = employeeService.getEmployeeList();
			 List<Employee> newemployeeList = new ArrayList<Employee>();
			 for (Employee employee2 : employeeList) {
				if (employee2.getEmployeeid().equals(neweEmployee.getEmployeeid())) {
					newemployeeList.add(employee2);
				}
			}
			 modelAndView.addObject("employeeList", newemployeeList);
			 modelAndView.setViewName("font/search");
	    }
		
		return modelAndView;
	}
	@RequestMapping("/font/searchxiangqing")
	public ModelAndView searchxiangqing(HttpSession httpSession,int detailid) {
		ModelAndView modelAndView = new ModelAndView();
		String username = (String)httpSession.getAttribute("employeeaccount");
		 String password = (String)httpSession.getAttribute("employeepassword");
		 if(username!=null&&password!=null){
			 Employee employee = new Employee();
			 employee.setEmployeeaccount(username);
			 employee.setEmployeepassword(password);
			 Employee neweEmployee = employeeService.getEmployeeByNameAndPassword(employee);
			 
			 List<Detail> detailList = detailService.getDetailList();
			 List<Detail> newdetailList = new ArrayList<Detail>();
			 for (Detail detail : detailList) {
				if (detail.getEmployeeid().equals(neweEmployee.getEmployeeid())) {
					newdetailList.add(detail);
				}
			}
			 for (Detail detail : newdetailList) {
				if (detail.getDetailid().equals(detailid)) {
					modelAndView.addObject("detail",detail);
					modelAndView.addObject("employee",neweEmployee);
				}
			}
			 modelAndView.setViewName("font/search4");
			 
	    }
		
		return modelAndView;
	}
	@RequestMapping("/font/search2")
	public ModelAndView search2(HttpSession httpSession) {
		ModelAndView modelAndView = new ModelAndView();
		String username = (String)httpSession.getAttribute("employeeaccount");
		 String password = (String)httpSession.getAttribute("employeepassword");
		 if(username!=null&&password!=null){
			 Employee employee = new Employee();
			 employee.setEmployeeaccount(username);
			 employee.setEmployeepassword(password);
			 Employee neweEmployee = employeeService.getEmployeeByNameAndPassword(employee);
			 
			 List<Detail> detailList = detailService.getDetailList();
			 List<Detail> newdetailList = new ArrayList<Detail>();
			 for (Detail detail : detailList) {
				if (detail.getEmployeeid().equals(neweEmployee.getEmployeeid())) {
					newdetailList.add(detail);
				}
			}
			 modelAndView.addObject("detailList", newdetailList);
			 
			 List<Traffic> trafficList = trafficService.getTrafficList();
			 List<Traffic> newtrafficList = new ArrayList<Traffic>();
			 for (Traffic traffic : trafficList) {
				if (traffic.getEmployeeid().equals(neweEmployee.getEmployeeid())) {
					newtrafficList.add(traffic);
				}
			}
			 modelAndView.addObject("trafficList", newtrafficList);
			 List<Employee> employeeList = employeeService.getEmployeeList();
			 List<Employee> newemployeeList = new ArrayList<Employee>();
			 for (Employee employee2 : employeeList) {
				if (employee2.getEmployeeid().equals(neweEmployee.getEmployeeid())) {
					newemployeeList.add(employee2);
				}
			}
			 modelAndView.addObject("employeeList", newemployeeList);
			 modelAndView.setViewName("font/search2");
	    }
		
		return modelAndView;
	}
	@RequestMapping("/font/search3")
	public ModelAndView search3(HttpSession httpSession) {
		ModelAndView modelAndView = new ModelAndView();
		String username = (String)httpSession.getAttribute("employeeaccount");
		 String password = (String)httpSession.getAttribute("employeepassword");
		 if(username!=null&&password!=null){
			 Employee employee = new Employee();
			 employee.setEmployeeaccount(username);
			 employee.setEmployeepassword(password);
			 Employee neweEmployee = employeeService.getEmployeeByNameAndPassword(employee);
			 
			 List<Detail> detailList = detailService.getDetailList();
			 List<Detail> newdetailList = new ArrayList<Detail>();
			 for (Detail detail : detailList) {
				if (detail.getEmployeeid().equals(neweEmployee.getEmployeeid())) {
					newdetailList.add(detail);
				}
			}
			 modelAndView.addObject("detailList", newdetailList);
			 
			 List<Traffic> trafficList = trafficService.getTrafficList();
			 List<Traffic> newtrafficList = new ArrayList<Traffic>();
			 for (Traffic traffic : trafficList) {
				if (traffic.getEmployeeid().equals(neweEmployee.getEmployeeid())) {
					newtrafficList.add(traffic);
				}
			}
			 modelAndView.addObject("trafficList", newtrafficList);
			 List<Employee> employeeList = employeeService.getEmployeeList();
			 List<Employee> newemployeeList = new ArrayList<Employee>();
			 for (Employee employee2 : employeeList) {
				if (employee2.getEmployeeid().equals(neweEmployee.getEmployeeid())) {
					newemployeeList.add(employee2);
				}
			}
			 modelAndView.addObject("employeeList", newemployeeList);
			 modelAndView.setViewName("font/search3");
	    }
		
		return modelAndView;
	}
	@RequestMapping("/font/xiugai")
	public ModelAndView xiugai(HttpSession httpSession) {
		 ModelAndView modelAndView = new ModelAndView();
		 String username = (String)httpSession.getAttribute("employeeaccount");
		 String password = (String)httpSession.getAttribute("employeepassword");
		 if(username!=null&&password!=null){
			 Employee employee = new Employee();
			 employee.setEmployeeaccount(username);
			 employee.setEmployeepassword(password);
			 Employee neweEmployee = employeeService.getEmployeeByNameAndPassword(employee);
			 modelAndView.addObject("employee", neweEmployee);
			 modelAndView.setViewName("font/xiugai");
			 return modelAndView;
		 }
		 modelAndView.setViewName("font/login");
		 return modelAndView;
		
	}
	@RequestMapping(value="/font/employeexiugai", method=RequestMethod.POST)
	public String employeexiugai(Employee employee,Integer employeeid) {
		Employee employee3 = employeeService.findEmployeePassword(employeeid);
		String pwdd = employee3.getEmployeepassword();
		String pwddd = employee.getEmployeepassword();
		if(pwdd != null && pwddd != null && pwdd != pwddd) {
			Date date = new Date();   	  
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");    
			String datetime = format.format(date); 
			employee.setEmployeeregisteredtime(datetime);
		}
		int i = employeeService.updateByPrimaryKey(employee);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (i == 1) {
			return "forward:/font/xiugai.action";
		}
		return "font/xiugai";
	}
	@RequestMapping(value="/font/shenhe", method=RequestMethod.POST)
	public String shenhe(Traffic traffic,String trafficsection1,String trafficsection2) {
		traffic.setTrafficsection(trafficsection1+"->"+trafficsection2);
		int i = trafficService.insert(traffic);
		if(i > 0) {
			
			return "forward:/font/search2.action";
		}
		return "font/shenbao";
	}
}
