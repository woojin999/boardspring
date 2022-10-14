package com.myweb.www.domain;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Alias("bvo")
public class BoardVO {
	private long bno;
	private String category;
	private String pname;
	private String shopname;
	private String purl;
	private int price;
	private String description;
	private int readCount;
	private long writer;
	private String productImg;
	private String regAt;
	private String modAt;
	private int fileCount;
	
	// reg
	public BoardVO(String category, String pname, String shopname, String purl, int price, String description,
			long writer) {
		this.category = category;
		this.pname = pname;
		this.shopname = shopname;
		this.purl = purl;
		this.price = price;
		this.description = description;
		this.writer = writer;
		
	}

	//list
	public BoardVO(long bno, String category, String pname, int price, int readCount, long writer, String productImg,
			String modAt) {
		super();
		this.bno = bno;
		this.category = category;
		this.pname = pname;
		this.price = price;
		this.readCount = readCount;
		this.writer = writer;
		
		this.modAt = modAt;
	}

	//detail
	public BoardVO(long bno, String pname, String shopname, String purl, int price, String description,
			int readCount, long writer, String productImg, String modAt) {
		this.bno = bno;
		this.pname = pname;
		this.shopname = shopname;
		this.purl = purl;
		this.price = price;
		this.description = description;
		this.readCount = readCount;
		this.writer = writer;
		
		this.modAt = modAt;
	}

	// mod
	public BoardVO(String category, String pname, String shopname, String purl, int price, String description,
			String productImg) {
		this.category = category;
		this.pname = pname;
		this.shopname = shopname;
		this.purl = purl;
		this.price = price;
		this.description = description;
		
	}
	
	
}

