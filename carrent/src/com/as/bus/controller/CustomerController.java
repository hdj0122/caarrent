package com.as.bus.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.as.bus.service.CustomerService;
import com.as.bus.vo.CustomerVo;
import com.as.sys.utils.DataGridView;
import com.as.sys.utils.ResultObj;

/**
 * 客户管理控制器
 * 
 * @author LJH
 *
 */
@RestController
@RequestMapping("customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	/**
	 * 加载客户列表返回DataGridView
	 */
	@RequestMapping("loadAllCustomer")
	public DataGridView loadAllCustomer(CustomerVo customerVo) {
		return this.customerService.queryAllCustomer(customerVo);
	}
	
	/**
	 * 添加客户
	 */
	@RequestMapping("addCustomer")
	public ResultObj addCustomer(CustomerVo customerVo) {
		try {
			customerVo.setCreatetime(new Date());
			this.customerService.addCustomer(customerVo);
			return ResultObj.ADD_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.ADD_ERROR;
		}
	}
	/**
	 * 修改客户
	 */
	@RequestMapping("updateCustomer")
	public ResultObj updateCustomer(CustomerVo customerVo) {
		try {
			this.customerService.updateCustomer(customerVo);
			return ResultObj.UPDATE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.UPDATE_ERROR;
		}
	}

	/**
	 * 删除客户
	 */
	@RequestMapping("deleteCustomer")
	public ResultObj deleteCustomer(CustomerVo customerVo) {
		try {
			this.customerService.deleteCustomer(customerVo.getIdentity());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}

	/**
	 * 批量删除客户
	 */
	@RequestMapping("deleteBatchCustomer")
	public ResultObj deleteBatchCustomer(CustomerVo customerVo) {
		try {
			this.customerService.deleteBatchCustomer(customerVo.getIds());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}
}
