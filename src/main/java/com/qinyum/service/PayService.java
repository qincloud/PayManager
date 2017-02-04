package com.qinyum.service;

import java.util.List;

import com.qinyum.pojo.Income;
import com.qinyum.pojo.Pay;
import com.qinyum.util.Result;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月28日 下午3:24:38
 */
public interface PayService {

	public Result save_income(Income income);

	public Result save_pay(Pay pay);

	public double sumIncome();

	public double sumPay();

	public List<Income> getIncomeAll();

	public List<Pay> getPayAll();

}
