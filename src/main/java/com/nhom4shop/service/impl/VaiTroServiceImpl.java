package com.nhom4shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom4shop.entities.VaiTro;
import com.nhom4shop.repository.VaiTroRepository;
import com.nhom4shop.service.VaiTroService;

@Service
public class VaiTroServiceImpl implements VaiTroService{
	

	@Autowired
	private VaiTroRepository repo;

	@Override
	public VaiTro findByTenVaiTro(String tenVaiTro) {
		return repo.findByTenVaiTro(tenVaiTro);
	}

	@Override
	public List<VaiTro> findAllVaiTro() {
		return repo.findAll();
	}


}
