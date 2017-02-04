package com.qinyum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qinyum.pojo.Income;
import com.qinyum.service.PayService;
import com.qinyum.util.Result;

/**
 * @author ����: ������
 * @Xemail ���� E-mail: 996298643@qq.com
 * @create ����ʱ��: 2017��1��31�� ����1:44:22
 */
@Controller
public class IncomeController extends BaseController {

	@Autowired
	private PayService payService;

	@RequestMapping("add_income")
	public String addIncome() {
		return "add_income";
	}

	@RequestMapping("income_table")
	public String income_table() {
		return "income_table";
	}

	@RequestMapping("income_list")
	@ResponseBody
	public Object income_list() {
		return payService.getIncomeAll();
	}

	@RequestMapping("save_income")
	@ResponseBody
	public Result save_Income(Income income) {
		return payService.save_income(income);
	}

}
