package com.as.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.as.sys.domain.Log;
import com.as.sys.mapper.LogMapper;
import com.as.sys.service.LogService;
import com.as.sys.utils.DataGridView;
import com.as.sys.vo.LogVo;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
@Service
public class LogServiceImpl implements LogService{

	@Autowired
	private LogMapper logMapper;
	
	@Override
	public DataGridView loadAllLogInfo(LogVo logVo) {
		Page<Log> page=PageHelper.startPage(logVo.getPage(),logVo.getLimit());
		List<Log> allLog = logMapper.queryAllLogInfo(logVo);
		return new DataGridView(page.getTotal(), allLog);
	}

	@Override
	public void deleteLog(Integer id) {
		// TODO Auto-generated method stub
		logMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void addLog(LogVo logInfoVo) {
		// TODO Auto-generated method stub
		logMapper.insertSelective(logInfoVo);
	}

}
