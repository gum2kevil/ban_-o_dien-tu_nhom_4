package com.nhom4shop.service;

import com.nhom4shop.entities.GioHang;
import com.nhom4shop.entities.NguoiDung;

public interface GioHangService {
	
	GioHang getGioHangByNguoiDung(NguoiDung n);
	
	GioHang save(GioHang g);
}
