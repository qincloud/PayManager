package com.qinyum.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qinyum.dao.PayDao;
import com.qinyum.mapper.Income_CURD;
import com.qinyum.mapper.Pay_CURD;
import com.qinyum.pojo.Income;
import com.qinyum.pojo.Pay;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月28日 下午2:39:46
 */
@Repository
public class PayDaoImpl implements PayDao {

	@Autowired
	private Pay_CURD pay_curd;

	@Autowired
	private Income_CURD income_curd;

	public List<Pay> getPayList() {
		return pay_curd.selectAll();
	}

	public List<Income> getIncomeList() {
		return income_curd.selectAll();
	}

	public void insertPay(Pay pay) {
		pay_curd.insert(pay);
	}

	public void insertIncome(Income income) {
		income_curd.insert(income);
	}

	public double sumPay() {
		return pay_curd.sumPay();
	}

	public double sumIncome() {
		return income_curd.sumIncome();
	}
}
