package com.as.stat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.as.stat.domain.BaseEntity;
import com.as.stat.service.StatService;


@RequestMapping("stat")
@Controller
public class StatController {
	
	@Autowired
	private StatService statService;
	
	
	/**
	 * 跳转到客户地区统计页面
	 */
	@RequestMapping("toCustomerAreaStat")
	public String toCustomerAreaStat() {
		return "stat/customerAreaStat";
	}
	
	@RequestMapping("loadCustomerAreaStatJosn")
	@ResponseBody
	public List<BaseEntity> loadCustomerAreaStatJosn(){
		return this.statService.loadCustomerAreaStatList();
	}
	
}
