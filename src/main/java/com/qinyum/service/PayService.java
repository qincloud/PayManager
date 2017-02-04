package com.qinyum.service;

import java.util.List;

import com.qinyum.pojo.Income;
import com.qinyum.pojo.Pay;
import com.qinyum.util.Result;

/**
 * @author ����: ������
 * @Xemail ���� E-mail: 996298643@qq.com
 * @create ����ʱ��: 2017��1��28�� ����3:24:38
 */
public interface PayService {

	public Result save_income(Income income);

	public Result save_pay(Pay pay);

	public double sumIncome();

	public double sumPay();

	public List<Income> getIncomeAll();

	public List<Pay> getPayAll();

}
