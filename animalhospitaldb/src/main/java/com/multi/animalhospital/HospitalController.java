package com.multi.animalhospital;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.multi.animalhospitalDAO.HospitalDAO;



@Controller
public class HospitalController {
	@Autowired
	HospitalDAO dao;
	
}
