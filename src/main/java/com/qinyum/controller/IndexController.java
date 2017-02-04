package com.qinyum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qinyum.service.PayService;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月29日 下午5:47:17
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
