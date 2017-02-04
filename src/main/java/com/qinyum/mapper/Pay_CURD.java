package com.qinyum.mapper;

import java.util.List;

import com.qinyum.pojo.Pay;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月28日 下午2:07:50
 */
public interface Pay_CURD {
	public List<Pay> selectAll();

	public void insert(Pay pay);

	public double sumPay();
}
