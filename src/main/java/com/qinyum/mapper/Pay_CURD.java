package com.qinyum.mapper;

import java.util.List;

import com.qinyum.pojo.Pay;

/**
 * @author ����: ������
 * @Xemail ���� E-mail: 996298643@qq.com
 * @create ����ʱ��: 2017��1��28�� ����2:07:50
 */
public interface Pay_CURD {
	public List<Pay> selectAll();

	public void insert(Pay pay);

	public double sumPay();
}
