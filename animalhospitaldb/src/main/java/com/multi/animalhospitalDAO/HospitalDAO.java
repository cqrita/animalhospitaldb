package com.multi.animalhospitalDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.multi.animalhospitalVO.HospitalVO;
import com.multi.animalhospitalVO.Medical;

@Component("hospital")
public class HospitalDAO implements MedicalDAO {

	@Override
	public ArrayList<Medical> searchAddress(String a1, String a2) {
		ArrayList<Medical> list = new ArrayList<Medical>(); 		
		try {
			String sql = "select * from hospital where address_1=? and address_2=?";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			PreparedStatement pt = con.prepareStatement(sql);
			pt.setString(1, a1);
			pt.setString(2, a2);
			ResultSet rs = pt.executeQuery();
			while(rs.next()) {
				Medical vo = new HospitalVO();
				vo.setName(rs.getString("name"));
				vo.setNameAddress(rs.getString("nameAddress"));
				vo.setSeg(rs.getString("seg"));
				vo.setStatusCode(rs.getString("statusCode"));
				vo.setStatusName(rs.getString("statusName"));
				vo.setTel(rs.getString("tel"));
				vo.setX(rs.getString("X"));
				vo.setY(rs.getString("Y"));
				list.add(vo);
			}
			pt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
