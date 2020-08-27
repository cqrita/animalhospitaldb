package com.multi.animalhospital;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.animalhospitalDAO.MemberDAO;
import com.multi.animalhospitalVO.MemberVO;

@Controller
public class LoginController {
	MemberDAO dao = new MemberDAO();

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginView(MemberVO vo) {
		System.out.println("로그인 화면 이동");
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginprocess(@RequestParam(value = "id") String id, @RequestParam(value = "password") String pw,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(id + ":" + pw);
		boolean checkPw = dao.getMember(id, pw);
		if (checkPw == true) {
			session.setAttribute("loginid", id);
		} else {
			session.removeAttribute("loginid");
		}
		return "loginprocess";
	}

}
