package com.myweb.www.domain;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("fvo")
public class FileVO {
	private String uuid;
	private String saveDir;
	private String imageName;
	private long imageSize;
	private long bno;
	private long mno;
	private String regAt;
}
