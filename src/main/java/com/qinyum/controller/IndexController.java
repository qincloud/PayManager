package com.qinyum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qinyum.service.PayService;

/**
 * @author ����: ������
 * @Xemail ���� E-mail: 996298643@qq.com
 * @create ����ʱ��: 2017��1��29�� ����5:47:17
 */
@Controller
public class IndexController extends BaseController {

	@Autowired
	private PayService payService;

	@RequestMapping(value = "index")
	public String index(Model model) {
		model.addAttribute("sumIncome", payService.sumIncome());
		model.addAttribute("sumPay", payService.sumPay());
		model.addAttribute("rest", payService.sumIncome() - payService.sumPay());
		
		return "home";
	}

}
