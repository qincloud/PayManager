package com.qinyum.mapper;

import java.util.List;

import com.qinyum.pojo.Income;

/**
 * @author ����: ������
 * @Xemail ���� E-mail: 996298643@qq.com
 * @create ����ʱ��: 2017��1��29�� ����2:41:06
 */
public interface Income_CURD {
	public List<Income> selectAll();
	public void insert(Income income);
	public double sumIncome();
}
