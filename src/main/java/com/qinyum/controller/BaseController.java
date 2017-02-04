package com.qinyum.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * @author ����: ������
 * @Xemail ���� E-mail: 996298643@qq.com
 * @create ����ʱ��: 2017��1��28�� ����3:33:48
 */
public class BaseController {
	static final String SUCCESS = "success";
	static final String ERROR = "error";
	static final String EXCEPTION = "exception";

	/**
	 * ��ȡҳ�洫�ݵ�ĳһ������ֵ,
	 */
	public String getParameter(String key) {
		return this.getRequest().getParameter(key);
	}

	/**
	 * �õ�request����
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		return request;
	}
}
