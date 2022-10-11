package com.myweb.www.repository;

import java.util.List;

import com.myweb.www.domain.FileVO;

public interface FileDAO {
	int insertBFile(FileVO fvo);
	int insertMFile(FileVO fvo);
	List<FileVO> selectListBFile(long bno);
	List<FileVO> selectListMFile(long bno);
	int deleteFile(String uuid);
	int deleteAllBFile(long bno);
	int deleteAllMFile(long bno);
}
