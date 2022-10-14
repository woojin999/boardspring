package com.myweb.www.domain;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@Alias("bdto")
public class BoardDTO {
	private BoardVO bvo;
	private List<FileVO> fileList;
}
