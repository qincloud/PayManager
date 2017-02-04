package com.qinyum.dao;

import java.util.List;

import com.qinyum.pojo.Income;
import com.qinyum.pojo.Pay;

/**
 * @author ����: ������
 * @Xemail ���� E-mail: 996298643@qq.com
 * @create ����ʱ��: 2017��1��28�� ����2:15:07
 */
public interface PayDao {
	public List<Pay> getPayList();

	public List<Income> getIncomeList();

	public void insertPay(Pay pay);

	public void insertIncome(Income income);

	public double sumPay();

	public double sumIncome();
}
