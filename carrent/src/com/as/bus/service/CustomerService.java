package com.as.bus.service;

import com.as.bus.vo.CustomerVo;
import com.as.sys.utils.DataGridView;

/**
 * 客户管理的服务接口
 * @author LJH
 *
 */
public interface CustomerService {
	/**
	 * 查询所有客户
	 * @param customerVo
	 * @return
	 */
	public DataGridView queryAllCustomer(CustomerVo customerVo);
	/**
	 * 添加客户
	 * @param customerVo
	 */
	public void addCustomer(CustomerVo customerVo);
	/**
	 * 修改客户
	 * @param customerVo
	 */
	public void updateCustomer(CustomerVo customerVo);
	/**
	 * 根据id删除客户
	 * @param customerid
	 */
	public void deleteCustomer(String identity);
	/**
	 * 批量删除客户
	 * @param customerVo
	 */
	public void deleteBatchCustomer(String [] identitys);

}
