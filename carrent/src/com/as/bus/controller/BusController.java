package com.as.bus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 业务管理的路由控制器
 * @author LJH
 *
 */
@Controller
@RequestMapping("bus")
public class BusController {

	/**
	 * 跳转到客户管理的页面
	 */
	@RequestMapping("toCustomerManager")
	public String toCustomerManager() {
		return "business/customer/customerManager";
	}
	
	/**
	 * 跳转到车辆管理的页面
	 */
	@RequestMapping("toCarManager")
	public String toCarManager() {
		return "business/car/carManager";
	}
	
}
