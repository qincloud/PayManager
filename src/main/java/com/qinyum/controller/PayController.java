package com.qinyum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qinyum.pojo.Pay;
import com.qinyum.service.PayService;
import com.qinyum.util.Result;

/**
 * @author ����: ������
 * @Xemail ���� E-mail: 996298643@qq.com
 * @create ����ʱ��: 2017��1��31�� ����1:44:30
 */
@Controller
public class PayController extends BaseController {

	@Autowired
	private PayService payService;

	@RequestMapping("add_pay")
	public String add_Pay() {
		return "add_pay";
	}

	@RequestMapping("pay_table")
	public String pay_table() {
		return "pay_table";
	}

	@RequestMapping("pay_list")
	@ResponseBody
	public Object pay_list() {
		return payService.getPayAll();
	}

	@RequestMapping("save_pay")
	@ResponseBody
	public Result save_Pay(Pay pay) {
		return payService.save_pay(pay);
	}

}
