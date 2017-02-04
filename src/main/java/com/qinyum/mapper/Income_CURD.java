package com.qinyum.mapper;

import java.util.List;

import com.qinyum.pojo.Income;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月29日 上午2:41:06
 */
public interface Income_CURD {
	public List<Income> selectAll();
	public void insert(Income income);
	public double sumIncome();
}
