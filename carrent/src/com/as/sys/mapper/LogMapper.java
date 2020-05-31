package com.as.sys.mapper;

import java.util.List;

import com.as.sys.domain.Log;

public interface LogMapper {
	 int deleteByPrimaryKey(Integer id);

	    int insert(Log record);

	    int insertSelective(Log record);

	    Log selectByPrimaryKey(Integer id);

	    int updateByPrimaryKeySelective(Log record);

	    int updateByPrimaryKey(Log record);
	    
	    /**
	     * 查询日志
	     */
	    List<Log> queryAllLogInfo(Log log);
}
