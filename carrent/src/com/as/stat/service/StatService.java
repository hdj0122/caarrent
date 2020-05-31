package com.as.stat.service;

import java.util.List;

import com.as.stat.domain.BaseEntity;


public interface StatService {

	/**
	 * 查询客户地区的数据
	 * @return
	 */
	List<BaseEntity> loadCustomerAreaStatList();


	
}
