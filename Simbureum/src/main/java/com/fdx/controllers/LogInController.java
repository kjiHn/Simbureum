package com.fdx.controllers;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fdx.dto.AdminDTO;
import com.fdx.dto.JoinDTO;
import com.fdx.dto.LoginDTO;
import com.fdx.services.LoginService;

@RequestMapping(value = "/login/*")
@Controller
public class LogInController {

	@Autowired
	private LoginService loginService;

	@GetMapping(value = "main")
	public String logIn(
			HttpServletRequest request, HttpServletResponse response) {
		String url = request.getHeader("referer");
		request.setAttribute("url", url);
		return "join/login";
	}

	@RequestMapping(value = "loginCheck" ,  method =  RequestMethod.POST)
	@ResponseBody
	private int login(@RequestParam(value = "ID", required = false) String id,
			@RequestParam(value = "password", required = false) String pswd,
			@RequestParam(value = "chk_info", required = false)int chk_info
			,HttpServletRequest request, HttpServletResponse response
			) {
		int num = 0;
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		System.out.println(id);
		System.out.println(pswd);
		System.out.println(chk_info);
		JoinDTO joinDTO = new JoinDTO();
		AdminDTO adminDTO = new AdminDTO();
		HttpSession session = request.getSession();	
		if (chk_info == 1) {
			String mb_id = id;
			joinDTO = loginService.memberCheck(mb_id);	
			if (joinDTO==null) {
				num = 0;
			}else {
				if (encoder.matches(pswd, joinDTO.getMb_pswd())) {
					num = 1;
					request.setAttribute("joinDTO", joinDTO); 
					session.setAttribute("mid", id);
					session.setAttribute("mNum", joinDTO.getMb_num_pk());

				}else {
					if (pswd.equals(joinDTO.getMb_pswd())) {
						num = 1;
						request.setAttribute("joinDTO", joinDTO); 
						session.setAttribute("mid", id);
						session.setAttribute("mNum", joinDTO.getMb_num_pk());
					}else {						
						num = -1;
					}
				}
			}	
			
		} else if (chk_info == 2) {
			String mng_id_pk = id;
			adminDTO = loginService.adminCheck(mng_id_pk);
			if (adminDTO==null) {
				num = 0;
			}else {
				if (pswd.equals(adminDTO.getMng_pswd())) {
					
					num = 3;
					request.setAttribute("adminDTO", adminDTO); 
					session.setAttribute("mid", id);

				}else {
					num = -1;
				}
			}	
		}
		System.out.println(num);
		return num;
	}
	
	
	@RequestMapping(value ="logout" )
	public String logOut(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();	
		session.removeAttribute("mid");
		session.removeAttribute("mNum");
		
		
		return "redirect:/";
	}

}
