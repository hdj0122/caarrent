package com.as.stat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.as.stat.domain.BaseEntity;
import com.as.stat.mapper.StatMapper;
import com.as.stat.service.StatService;



@Service
public class StatServiceImpl implements StatService {
	
	
	@Autowired
	private StatMapper statMapper;

	@Override
	public List<BaseEntity> loadCustomerAreaStatList() {
		return statMapper.queryCustomerAreaStat();
	}

	

}
