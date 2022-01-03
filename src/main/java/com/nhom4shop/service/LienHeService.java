package com.nhom4shop.service;

import java.text.ParseException;

import org.springframework.data.domain.Page;

import com.nhom4shop.dto.SearchLienHeObject;
import com.nhom4shop.entities.LienHe;

public interface LienHeService {

	Page<LienHe> getLienHeByFilter(SearchLienHeObject object, int page) throws ParseException;

	LienHe findById(long id);
	
	LienHe save(LienHe lh);
	
	int countByTrangThai(String trangThai);

}
