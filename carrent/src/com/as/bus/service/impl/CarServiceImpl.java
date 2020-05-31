package com.as.bus.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.as.bus.domain.Car;
import com.as.bus.mapper.CarMapper;
import com.as.bus.service.CarService;
import com.as.bus.vo.CarVo;
import com.as.sys.utils.DataGridView;

@Service
public class CarServiceImpl implements CarService {
	
	@Autowired
	private CarMapper carMapper;

	@Override
	public DataGridView queryAllCar(CarVo carVo) {
		Page<Object> page=PageHelper.startPage(carVo.getPage(), carVo.getLimit());
		List<Car> data = this.carMapper.queryAllCar(carVo);
		return new DataGridView(page.getTotal(), data);
	}

	@Override
	public void addCar(CarVo carVo) {
		this.carMapper.insertSelective(carVo);
	}

	@Override
	public void deleteCar(String carnumber) {
		this.carMapper.deleteByPrimaryKey(carnumber);
	}

	@Override
	public void deleteBatchCar(String[] carnumbers) {
		for (String carnumber : carnumbers) {
			this.deleteCar(carnumber);
		}
	}

	@Override
	public void updateCar(CarVo carVo) {
		this.carMapper.updateByPrimaryKeySelective(carVo);
	}

	@Override
	public Car queryCarByCarNumber(String carnumber) {
		return this.carMapper.selectByPrimaryKey(carnumber);
	}

}
