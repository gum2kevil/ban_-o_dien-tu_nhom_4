package com.nhom4shop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhom4shop.entities.VaiTro;

public interface VaiTroRepository extends JpaRepository<VaiTro, Long> {

	VaiTro findByTenVaiTro(String tenVaiTro);
}
