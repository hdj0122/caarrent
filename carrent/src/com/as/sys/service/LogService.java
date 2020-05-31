package com.as.sys.service;

import com.as.sys.utils.DataGridView;
import com.as.sys.vo.LogVo;

public interface LogService {

	DataGridView loadAllLogInfo(LogVo logVo);

	void deleteLog(Integer id);

	void addLog(LogVo logInfoVo);

}
