package com.as.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.as.sys.service.LogService;
import com.as.sys.utils.DataGridView;
import com.as.sys.utils.ResultObj;
import com.as.sys.vo.LogVo;

@RestController
@RequestMapping("logInfo")
public class LogController {
	@Autowired
	private LogService logService;
	
	@RequestMapping("loadAllLogInfo")
	public DataGridView loadAllLogInfo(LogVo logVo) {
		return logService.loadAllLogInfo(logVo);
	}
	
	@RequestMapping("deleteLogInfo")
	public ResultObj deleteLog(LogVo logVo) {
		try {
			this.logService.deleteLog(logVo.getId());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}
}
