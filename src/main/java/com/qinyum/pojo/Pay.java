package com.qinyum.pojo;

import java.util.Date;

/**
 * @author ����: ������
 * @Xemail ���� E-mail: 996298643@qq.com
 * @create ����ʱ��: 2017��1��28�� ����1:54:08 ֧����
 */
public class Pay {
	private int id;
	// ������Ʒ����
	private String name;
	// ����
	private float sprice;
	// ����ԭ��
	private String cause;
	// ������������
	private String quality;
	// �ܼ�
	private float sumprice;
	// ����ʱ��
	private String date;
	// ����
	private String description;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getSprice() {
		return sprice;
	}

	public void setSprice(float sprice) {
		this.sprice = sprice;
	}

	public String getCause() {
		return cause;
	}

	public void setCause(String cause) {
		this.cause = cause;
	}

	public String getQuality() {
		return quality;
	}

	public void setQuality(String quality) {
		this.quality = quality;
	}

	public float getSumprice() {
		return sumprice;
	}

	public void setSumprice(float sumprice) {
		this.sumprice = sumprice;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
