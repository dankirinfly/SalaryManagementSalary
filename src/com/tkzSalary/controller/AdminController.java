package com.tkzSalary.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tkzSalary.pojo.Admin;
import com.tkzSalary.pojo.Detail;
import com.tkzSalary.pojo.Employee;
import com.tkzSalary.pojo.GongGao;
import com.tkzSalary.pojo.Traffic;
import com.tkzSalary.service.AdminService;
import com.tkzSalary.service.DetailService;
import com.tkzSalary.service.EmployeeService;
import com.tkzSalary.service.GongGaoService;
import com.tkzSalary.service.TrafficService;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private DetailService detailService;
	@Autowired
	private TrafficService trafficService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private GongGaoService gongGaoService;
	
	@RequestMapping("/admin/tologin")
	public String tologin(HttpSession httpSession) {
		httpSession.setAttribute("adminaccount","");
		httpSession.setAttribute("adminpassword","");
		return "admin/login";
	}
	
	@RequestMapping("/admin/toadminxiugai")
	public String toadminxiugai() {
		
		return "admin/adminxiugai";
	}
	
	@RequestMapping("/admin/adminxiugai")
	public String adminxiugai(HttpSession httpSession,Admin admin,String xinpassword) {
		Admin newadAdmin = adminService.getAdminByNameAndPassword(admin);
		if (newadAdmin == null) {
			return "admin/adminxiugai";
		}else {
			newadAdmin.setAdminpassword(xinpassword);
			int a = adminService.updateByPrimaryKey(newadAdmin);
			if (a != 0) {
				httpSession.setAttribute("adminaccount",newadAdmin.getAdminaccount());
				httpSession.setAttribute("adminpassword",newadAdmin.getAdminpassword());
				return "admin/login";
			}else {
				return "admin/adminxiugai";
			}
		}
	}
	
	@RequestMapping(value="/admin/login", method=RequestMethod.POST)
	public ModelAndView login(Admin admin) {
		
		Admin newAdmin = adminService.getAdminByNameAndPassword(admin);
		ModelAndView modelAndView = new ModelAndView();
		if(newAdmin != null) {			
			List<Traffic> trafficList = trafficService.getTrafficListByStatus();
			modelAndView.addObject("trafficListSize", trafficList.size());
			List<GongGao> gongGaoList = gongGaoService.findGongGaoList();
			modelAndView.addObject("gongGaoList", gongGaoList);
			modelAndView.setViewName("admin/admin");
			return modelAndView;
		}
		modelAndView.setViewName("admin/login");
		return modelAndView;
	}
	
	@RequestMapping(value="/admin/gongaosearch")
	public ModelAndView gongaosearch(int gonggaoid) {
		
		ModelAndView modelAndView = new ModelAndView();
		
		List<GongGao> gongGaoList = gongGaoService.findGongGaoList();
		modelAndView.addObject("gongGaoList", gongGaoList);
		for (GongGao gongao : gongGaoList) {
			if(gongao.getGonggaoid().equals(gonggaoid)) {
				modelAndView.addObject("gonggao", gongao);
			}
		}
		modelAndView.setViewName("admin/gonggaosearch");
		return modelAndView;
	}
	@RequestMapping("/admin/admin")
	public ModelAndView admin() {
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		List<GongGao> gongGaoList = gongGaoService.findGongGaoList();
		modelAndView.addObject("gongGaoList", gongGaoList);
		modelAndView.setViewName("admin/admin");
		return modelAndView;
		
	}
	@RequestMapping("/admin/index")
	public String index() {
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		return "admin/index";
	}
	@RequestMapping("/admin/search")
	public ModelAndView search() {
		List<Detail> detailList = detailService.getDetailList();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("detailList", detailList);
		List<Traffic> trafficList = trafficService.getTrafficList();
		modelAndView.addObject("trafficList", trafficList);
		List<Employee> employeeList = employeeService.getEmployeeList();
		modelAndView.addObject("employeeList", employeeList);
		List<Traffic> trafficList1 = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList1.size());
		modelAndView.setViewName("admin/search");
		return modelAndView;
	}
	@RequestMapping("/admin/searchxiangqing")
	public ModelAndView searchxiangqing(int detailid,int employeeid) {
		ModelAndView modelAndView = new ModelAndView();
		Employee neweEmployee = employeeService.getEmployeeById(employeeid);
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
		List<Traffic> trafficList1 = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList1.size());
		modelAndView.setViewName("admin/search4");
		return modelAndView;
	}
	@RequestMapping("/admin/search2")
	public ModelAndView search2() {
		List<Detail> detailList = detailService.getDetailList();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("detailList", detailList);
		List<Traffic> trafficList = trafficService.getTrafficList();
		modelAndView.addObject("trafficList", trafficList);
		List<Employee> employeeList = employeeService.getEmployeeList();
		modelAndView.addObject("employeeList", employeeList);
		List<Traffic> trafficList1 = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList1.size());
		modelAndView.setViewName("admin/search2");
		return modelAndView;
	}
	@RequestMapping("/admin/search3")
	public ModelAndView search3() {
		List<Detail> detailList = detailService.getDetailList();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("detailList", detailList);
		List<Traffic> trafficList = trafficService.getTrafficList();
		modelAndView.addObject("trafficList", trafficList);
		List<Employee> employeeList = employeeService.getEmployeeList();
		modelAndView.addObject("employeeList", employeeList);
		List<Traffic> trafficList1 = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList1.size());
		modelAndView.setViewName("admin/search3");
		return modelAndView;
	}
	@RequestMapping("/admin/forms")
	public ModelAndView forms() {
		ModelAndView modelAndView = new ModelAndView();
		List<Employee> employeeList = employeeService.getEmployeeList();
		modelAndView.addObject("employeeList", employeeList);
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		modelAndView.setViewName("/admin/forms");
		return modelAndView;
	}
	@RequestMapping("/admin/forms2")
	public ModelAndView forms2() {
		ModelAndView modelAndView = new ModelAndView();
		List<Employee> employeeList = employeeService.getEmployeeList();
		modelAndView.addObject("employeeList", employeeList);
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		modelAndView.setViewName("/admin/forms2");
		return modelAndView;
	}
	@RequestMapping("/admin/forms3")
	public ModelAndView forms3() {
		ModelAndView modelAndView = new ModelAndView();
		List<Employee> employeeList = employeeService.getEmployeeList();
		modelAndView.addObject("employeeList", employeeList);
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		modelAndView.setViewName("/admin/forms3");
		return modelAndView;
	}
	@RequestMapping(value="/admin/gonggao", method=RequestMethod.POST)
	public String gonggao(GongGao gongGao) {
		int i = gongGaoService.insert(gongGao);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (i == 1) {
			return "forward:/admin/admin.action";
		}
		return "admin/forms";
	}
	@RequestMapping(value="/admin/detailzhuce", method=RequestMethod.POST)
	public String detailzhuce(Detail detail) {
		int i = detailService.insert(detail);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (i == 1) {
			return "forward:/admin/search.action";
		}
		return "admin/forms";
	}
	@RequestMapping(value="/admin/employeezhuce", method=RequestMethod.POST)
	public String employeezhuce(Employee employee) {
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (employee.getAdminid() == null) {
			employee.setAdminid(1);
		}
		int i = employeeService.insert(employee);
		if (i == 1) {
			return "forward:/admin/search3.action";
		}
		return "admin/forms";
	}
	@RequestMapping("/admin/guanli")
	public ModelAndView guanli() {
		List<Detail> detailList = detailService.getDetailList();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("detailList", detailList);
		List<Traffic> trafficList = trafficService.getTrafficList();
		modelAndView.addObject("trafficList", trafficList);
		List<Employee> employeeList = employeeService.getEmployeeList();
		modelAndView.addObject("employeeList", employeeList);
		List<Traffic> trafficList1 = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList1.size());
		modelAndView.setViewName("admin/guanli");
		return modelAndView;
	}
	@RequestMapping("/admin/guanli2")
	public ModelAndView guanli2() {
		List<Detail> detailList = detailService.getDetailList();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("detailList", detailList);
		List<Traffic> trafficList = trafficService.getTrafficList();
		modelAndView.addObject("trafficList", trafficList);
		List<Employee> employeeList = employeeService.getEmployeeList();
		modelAndView.addObject("employeeList", employeeList);
		List<Traffic> trafficList1 = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList1.size());
		modelAndView.setViewName("admin/guanli2");
		return modelAndView;
	}
	@RequestMapping("/admin/guanli3")
	public ModelAndView guanli3() {
		List<Detail> detailList = detailService.getDetailList();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("detailList", detailList);
		List<Traffic> trafficList = trafficService.getTrafficList();
		modelAndView.addObject("trafficList", trafficList);
		List<Employee> employeeList = employeeService.getEmployeeList();
		modelAndView.addObject("employeeList", employeeList);
		List<Traffic> trafficList1 = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList1.size());
		modelAndView.setViewName("admin/guanli3");
		return modelAndView;
	}
	@RequestMapping("/admin/guanli4")
	public ModelAndView guanli4() {

		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList1 = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList1.size());
		List<GongGao> gongGaoList = gongGaoService.findGongGaoList();
		modelAndView.addObject("gongGaoList", gongGaoList);
		modelAndView.setViewName("admin/guanli4");
		return modelAndView;
	}
	@RequestMapping(value="/admin/trafficChange", method=RequestMethod.POST)
	public ModelAndView trafficChange(Integer trafficid) {
		Traffic traffic = trafficService.getTrafficById(trafficid);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (traffic != null) {
			Employee employee = employeeService.getEmployeeById(traffic.getEmployeeid());
			modelAndView.addObject("employee", employee);
			modelAndView.addObject("traffic", traffic);
			modelAndView.setViewName("admin/xiugai");
			return modelAndView;
		}
		modelAndView.setViewName("admin/guanli");
		return modelAndView;
	}
	@RequestMapping(value="/admin/gonggaoChange", method=RequestMethod.POST)
	public ModelAndView gonggaoChange(Integer gonggaoid) {
		GongGao gongGao = gongGaoService.selectByPrimaryKey(gonggaoid);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (gongGao != null) {
			
			modelAndView.addObject("gongGao", gongGao);
			modelAndView.setViewName("admin/xiugai2");
			return modelAndView;
		}
		modelAndView.setViewName("admin/admin");
		return modelAndView;
	}
	@RequestMapping(value="/admin/gonggaoDeleate", method=RequestMethod.POST)
	public String gonggaoDeleate(Integer gonggaoid) {
		GongGao gongGao = gongGaoService.selectByPrimaryKey(gonggaoid);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (gongGao != null) {
			int i = gongGaoService.deleteByPrimaryKey(gonggaoid);
			if (i == 1) {
				return "forward:/admin/admin.action";
			}
		}
		return "admin/forms";
	}
	@RequestMapping(value="/admin/guanlixiugai", method=RequestMethod.POST)
	public String guanlixiugai(GongGao gongGao) {
		int i = gongGaoService.updateByPrimaryKey(gongGao);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (i == 1) {
			return "forward:/admin/guanli4.action";
		}
		return "forward:/admin/admin.action";
	}
	@RequestMapping(value="/admin/trafficDeleate", method=RequestMethod.POST)
	public String trafficDeleate(Integer trafficid) {
		Traffic traffic = trafficService.getTrafficById(trafficid);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (traffic != null) {
			int i = trafficService.deleteByPrimaryKey(trafficid);
			if (i == 1) {
				return "forward:/admin/search2.action";
			}
		}
		return "admin/forms";
	}
	@RequestMapping(value="/admin/detailChange", method=RequestMethod.POST)
	public ModelAndView detailChange(Integer detailid) {
		Detail detail = detailService.getDetailidById(detailid);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (detail != null) {
			Employee employee = employeeService.getEmployeeById(detail.getEmployeeid());
			modelAndView.addObject("employee", employee);
			modelAndView.addObject("detail", detail);
			modelAndView.setViewName("admin/xiugai");
			return modelAndView;
		}
		modelAndView.setViewName("admin/guanli");
		return modelAndView;
	}
	@RequestMapping(value="/admin/detailDeleate", method=RequestMethod.POST)
	public String detailDeleate(Integer detailid) {
		Detail detail = detailService.getDetailidById(detailid);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (detail != null) {
			int i = detailService.deleteByPrimaryKey(detailid);
			if (i == 1) {
				return "forward:/admin/search.action";
			}
		}
		return "admin/forms";
	}
	@RequestMapping(value="/admin/employeeChange", method=RequestMethod.POST)
	public ModelAndView employeeChange(Integer employeeid) {
		Employee employee = employeeService.getEmployeeById(employeeid);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (employee != null) {
			modelAndView.addObject("employee", employee);
			modelAndView.setViewName("admin/xiugai");
			return modelAndView;
		}
		modelAndView.setViewName("admin/guanli");
		return modelAndView;
	}
	@RequestMapping(value="/admin/employeeDeleate", method=RequestMethod.POST)
	public String employeeDeleate(Integer employeeid) {
		Employee employee = employeeService.getEmployeeById(employeeid);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (employee != null) {
			int i = employeeService.deleteByPrimaryKey(employeeid);
			if (i == 1) {
				return "forward:/admin/search3.action";
			}
		}
		return "admin/forms";
	}
	
	@RequestMapping(value="/admin/detailxiugai", method=RequestMethod.POST)
	public String detailxiugai(Detail detail) {
		int i = detailService.updateByPrimaryKey(detail);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (i == 1) {
			return "forward:/admin/guanli2.action";
		}
		return "admin/admin";
	}
	
	@RequestMapping(value="/admin/employeexiugai", method=RequestMethod.POST)
	public String employeexiugai(Employee employee) {
		int i = employeeService.updateByPrimaryKey(employee);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (i == 1) {
			return "forward:/admin/guanli3.action";
		}
		return "admin/admin";
	}
	
	@RequestMapping(value="/admin/trafficxiugai", method=RequestMethod.POST)
	public String trafficxiugai(Traffic traffic) {
		int i = trafficService.updateByPrimaryKey(traffic);
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (i == 1) {
			return "forward:/admin/guanli.action";
		}
		return "admin/admin";
	}
	
	@RequestMapping("/admin/shenhe")
	public ModelAndView shenhe() {
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficList", trafficList);
		modelAndView.addObject("trafficListSize", trafficList.size());
		List<Employee> employeeList = employeeService.getEmployeeList();
		modelAndView.addObject("employeeList", employeeList);
		modelAndView.setViewName("admin/shenhe");
		return modelAndView;
	}
	@RequestMapping(value="/admin/trafficTongGuo", method=RequestMethod.POST)
	public String trafficTongGuo(Traffic traffic) {
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (traffic.getTraffictime().length() > 11) {
			traffic.setTraffictime(traffic.getTraffictime().substring(0, 10));
		}
		traffic.setVerifystatus(3);
		int i = trafficService.updateByPrimaryKey(traffic);
		if (i == 1) {
			return "forward:/admin/shenhe.action";
		}
		return "admin/shenhe";
	}
	@RequestMapping(value="/admin/trafficJuJue", method=RequestMethod.POST)
	public String trafficJuJue(Traffic traffic) {
		ModelAndView modelAndView = new ModelAndView();
		List<Traffic> trafficList = trafficService.getTrafficListByStatus();
		modelAndView.addObject("trafficListSize", trafficList.size());
		if (traffic.getTraffictime().length() > 11) {
			traffic.setTraffictime(traffic.getTraffictime().substring(0, 10));
		}
		traffic.setVerifystatus(2);
		int i = trafficService.updateByPrimaryKey(traffic);
		if (i == 1) {
			return "forward:/admin/shenhe.action";
		}
		return "admin/shenhe";
	}
}
