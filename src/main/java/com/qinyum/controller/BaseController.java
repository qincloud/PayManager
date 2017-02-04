package com.qinyum.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月28日 下午3:33:48
 */
public class BaseController {
	static final String SUCCESS = "success";
	static final String ERROR = "error";
	static final String EXCEPTION = "exception";

	/**
	 * 获取页面传递的某一个参数值,
	 */
	public String getParameter(String key) {
		return this.getRequest().getParameter(key);
	}

	/**
	 * 得到request对象
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		return request;
	}
}
