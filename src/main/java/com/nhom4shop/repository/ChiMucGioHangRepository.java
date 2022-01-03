package com.nhom4shop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhom4shop.entities.ChiMucGioHang;
import com.nhom4shop.entities.GioHang;
import com.nhom4shop.entities.SanPham;

public interface ChiMucGioHangRepository extends JpaRepository<ChiMucGioHang, Long>{
	
	ChiMucGioHang findBySanPhamAndGioHang(SanPham sp,GioHang g);
	
	List<ChiMucGioHang> findByGioHang(GioHang g);
}
