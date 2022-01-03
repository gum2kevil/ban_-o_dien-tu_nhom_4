package com.nhom4shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom4shop.entities.ChiTietDonHang;
import com.nhom4shop.repository.ChiMucGioHangRepository;
import com.nhom4shop.repository.ChiTietDonHangRepository;
import com.nhom4shop.service.ChiTietDonHangService;

@Service
public class ChiTietDonHangServiceImpl implements ChiTietDonHangService{
	
	@Autowired
	private ChiTietDonHangRepository repo;
	
	@Override
	public List<ChiTietDonHang> save(List<ChiTietDonHang> list)
	{	
		return repo.saveAll(list);
	}
}
