package com.qinyum.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qinyum.dao.PayDao;
import com.qinyum.pojo.Income;
import com.qinyum.pojo.Pay;
import com.qinyum.service.PayService;
import com.qinyum.util.Result;

/**
 * @author ����: ������
 * @Xemail ���� E-mail: 996298643@qq.com
 * @create ����ʱ��: 2017��1��28�� ����3:24:54
 */
@Service
public class PayServiceImpl implements PayService {

	@Autowired
	private PayDao payDao;

	public Result save_income(Income income) {
		payDao.insertIncome(income);
		return Result.ok();
	}

	public Result save_pay(Pay pay) {
		payDao.insertPay(pay);
		return Result.ok();
	}

	public double sumIncome() {
		return payDao.sumIncome();
	}

	public double sumPay() {
		return payDao.sumPay();
	}

	public List<Income> getIncomeAll() {
		return payDao.getIncomeList();
	}

	public List<Pay> getPayAll() {
		return payDao.getPayList();
	}
}
