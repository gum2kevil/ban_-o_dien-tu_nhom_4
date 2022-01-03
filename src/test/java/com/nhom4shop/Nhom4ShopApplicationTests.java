package com.nhom4shop;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.nhom4shop.entities.DanhMuc;
import com.nhom4shop.entities.DonHang;
import com.nhom4shop.entities.NguoiDung;
import com.nhom4shop.entities.VaiTro;
import com.nhom4shop.repository.DonHangRepository;
import com.nhom4shop.repository.NguoiDungRepository;
import com.nhom4shop.service.DanhMucService;
import com.nhom4shop.service.NguoiDungService;
import com.nhom4shop.service.SanPhamService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Nhom4ShopApplicationTests {

	@Autowired
	private DanhMucService dmService;

	@Autowired
	private NguoiDungService nguoiDungService;

	@Autowired
	private NguoiDungRepository ndRepo;

	@Autowired
	private DonHangRepository dhRepo;
	
	@Autowired
	private SanPhamService spService;


//	@Test
//	public void getALlDanhMucTest() {
//		System.out.println(dhRepo.test().size());
//	}

	@Test
	public void getALlDanhMucTest() {
		System.out.println(spService.getSanPhamByTenSanPhamForAdmin("asus",0,10).getContent().size());
	}

}
