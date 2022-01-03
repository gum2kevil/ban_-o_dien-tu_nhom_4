package com.nhom4shop.service;

import java.util.List;

import com.nhom4shop.entities.VaiTro;

public interface VaiTroService {

	VaiTro findByTenVaiTro(String tenVaiTro);
	List<VaiTro> findAllVaiTro();
}
