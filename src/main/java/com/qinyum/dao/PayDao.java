package com.qinyum.dao;

import java.util.List;

import com.qinyum.pojo.Income;
import com.qinyum.pojo.Pay;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月28日 下午2:15:07
 */
public interface PayDao {
	public List<Pay> getPayList();

	public List<Income> getIncomeList();

	public void insertPay(Pay pay);

	public void insertIncome(Income income);

	public double sumPay();

	public double sumIncome();
}
