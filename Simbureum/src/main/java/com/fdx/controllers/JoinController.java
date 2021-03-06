package com.fdx.controllers;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Random;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fdx.dto.JoinDTO;
import com.fdx.services.JoinService;
import com.fdx.services.LoginService;

@RequestMapping(value = "/user/*")
@Controller
public class JoinController {
	
	private final static java.util.logging.Logger LOG = java.util.logging.Logger.getGlobal();
	
	@Autowired
	private JoinService joinservice;
	@Autowired
    private JavaMailSender mailSender;
	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "join")
	public String join() {
		
		return "join/joineUs";
	}
	
	
	@RequestMapping(value = "join1")
	public String join1() {
		
		return "join/firstJoin";
	}
	
	@RequestMapping(value = "idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam(value = "mb_id",required=true) String mb_id) {
		
		return joinservice.userIdCheck(mb_id);
	}
	
	
	@RequestMapping(value = "mailDupleCheck", method = RequestMethod.GET)
	@ResponseBody
	public int emailDuplCheck(@RequestParam(value = "mb_emaile",required=true) String mb_emaile) {
		
		return joinservice.emailDuplCheck(mb_emaile);
	}
	
	
 	@RequestMapping(value="mailCheck", method=RequestMethod.GET)
    @ResponseBody
    public String mailCheckGET( @RequestParam("email") String email) throws Exception{
        
 		/* ???(View)????????? ????????? ????????? ?????? */ 
 		LOG.info("????????? ????????? ?????? ??????");
 		LOG.info("???????????? : " + email);
 			 		       
        
        /* ????????????(??????) ?????? */
        Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111;
        LOG.info("???????????? " + checkNum);
        
        
        String setFrom = "haejohalge@fdx.com";
        String toMail = email;
        String title = "???????????? ?????? ????????? ?????????.";
        String content ="<div style=\"font-family: 'Apple SD Gothic Neo', 'sans-serif' !important; width: 540px; height: 600px; border-top: 4px solid #e3c4ff; margin: 100px auto; padding: 30px 0; box-sizing: border-box;\">\r\n" + 
        		"	<h1 style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">\r\n" + 
        		"		<span style=\"font-size: 15px; margin: 0 0 10px 3px;\">N:Source</span><br />\r\n" + 
        		"		<span style=\"color: #e3c4ff;\">????????????</span> ???????????????.\r\n" + 
        		"	</h1>\r\n" + 
        		"	<p style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">\r\n" + 
        		"		???????????????.<br />\r\n" + 
        		"		??????~??????!??? ????????? ????????? ???????????? ??????????????????.<br />\r\n" + 
        		"		?????? ??????????????? ????????????\r\n" + 
        		"		<b style=\"color: #e3c4ff;\">"
        		+ checkNum
        		+ "</b>\r\n" + 
        		"		??????????????? ????????? ?????????.<br />\r\n" + 
        		"		???????????????.\r\n" + 
        		"	</p>\r\n" + 
        		"	<div style=\"border-top: 1px solid #DDD; padding: 5px;\">\r\n" + 
        		"		<p style=\"font-size: 13px; line-height: 21px; color: #555;\">\r\n" + 
        		"			?????? ????????? ??????????????? ???????????? ????????????, ?????? ????????? ???????????? ????????? ?????????.<br />\r\n" + 
        		"		</p>\r\n" + 
        		"	</div>\r\n" + 
        		"</div>";
        
        
        try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(new InternetAddress("simbu@admin.admin", "admin"));
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        String num = Integer.toString(checkNum);
        
        return num;
    }
 	
 	
 	@RequestMapping(value = "insertMember", method = RequestMethod.POST)
	public String insertMember(JoinDTO joinDTO) {
		
 		LOG.info("join ??????");
		
		// ???????????? ????????? ??????
		joinservice.insertMember(joinDTO);
		
		LOG.info("join Service ??????");
		
		return "redirect:/";
	}
 	
 	
 	@RequestMapping(value = "findIdPage", method = RequestMethod.GET)
	public String findID() {
 		
 		return "join/findIDPage";
	}
 	
 	
 	@RequestMapping(value = "findPswdPage", method = RequestMethod.GET)
	public String findPswd() {
 		
 		return "join/findPswdPage";
	}
 	
 	@RequestMapping(value = "checkIdEmail", method = RequestMethod.GET)
 	@ResponseBody
 	public int emailIDCheck(@RequestParam(value = "mb_name",required=true) String mb_name
 			,@RequestParam(value = "mb_emaile",required=true) String mb_emaile){
 		int num;
 		JoinDTO joinDTO = new JoinDTO();
 		System.out.println(mb_name);
 		System.out.println(mb_emaile);
 		
 		joinDTO.setMb_emaile(mb_emaile);
 		joinDTO.setMb_name(mb_name);
 		
 		num = joinservice.idCheck(joinDTO);
 		return num;
 	}
 	
 	
 	@RequestMapping(value = "findIdPage", method = RequestMethod.POST)
	public String PostfindID(@RequestParam(value = "mb_emaile",required=false) String mb_emaile,
			@RequestParam(value = "mb_name",required=false) String mb_name) {
 		
 		String myId = "";
 		JoinDTO dto = new JoinDTO();
 		dto.setMb_name(mb_name);
 		dto.setMb_emaile(mb_emaile);
 		
 		LOG.info("????????? ????????? ?????? ??????");
 		LOG.info("???????????? : " + mb_emaile);
 		
 		
 		myId = joinservice.findID(dto);
 		
 		String setFrom = "haejohalge";
         String toMail = mb_emaile;
         String title = "????????? ???????????? ??????????????????.";
         String  content = "<div style=\"font-family: 'Apple SD Gothic Neo', 'sans-serif' !important; width: 540px; height: 600px; border-top: 4px solid #e3c4ff; margin: 100px auto; padding: 30px 0; box-sizing: border-box;\">\r\n" + 
	         		"	<h1 style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">\r\n" + 
	         		"		<span style=\"font-size: 15px; margin: 0 0 10px 3px;\">N:Source</span><br />\r\n" + 
	         		"		<span style=\"color: #e3c4ff;\">???????????? ?????????</span> ???????????????.\r\n" + 
	         		"	</h1>\r\n" + 
	         		"	<p style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">\r\n" + 
	         		"		???????????????.<br />\r\n" + 
	         		"		???????????? ????????? ?????????.<br />\r\n" + 
	         		"		??????????????? ???????????? ??????????????????.<br />\r\n" + 
	         		"		???????????????.\r\n" + 
	         		"	</p>\r\n" + 
	         		"\r\n" + 
	         		"	<p style=\"font-size: 16px; margin: 40px 5px 20px; line-height: 28px;\">\r\n" + 
	         		"		?????????: <br />\r\n" + 
	         		"		<span style=\"font-size: 24px;\">"
	         		+ myId
	         		+ "</span>\r\n" + 
	         		"	</p>\r\n" +  
	         		"	<div style=\"border-top: 1px solid #DDD; padding: 5px;\">\r\n" + 
	         		"		<p style=\"font-size: 13px; line-height: 21px; color: #555;\">\r\n" + 
	         		"			?????? ????????? ??????????????? ???????????? ????????????, ?????? ????????? ???????????? ????????? ?????????.<br />\r\n" + 
	         		"		</p>\r\n" + 
	         		"	</div>\r\n" + 
	         		"</div>";
         try {
             
             MimeMessage message = mailSender.createMimeMessage();
             MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
             helper.setFrom(new InternetAddress("simbu@admin.admin", "admin"));
             helper.setTo(toMail);
             helper.setSubject(title);
             helper.setText(content,true);
             mailSender.send(message);
             
         }catch(Exception e) {
             e.printStackTrace();
         }
 		
 		
 		
         return "redirect:/";
	}
 	
 	
 	@RequestMapping(value = "checkEmail", method = RequestMethod.POST)
 	@ResponseBody
 	public int emailCheck(@RequestParam(value = "mb_emaile",required=true) String mb_emaile,
 			@RequestParam(value = "mb_name",required=true) String mb_name
 			,@RequestParam(value = "mb_id",required=true) String mb_id) {
 		int num = 0;
 		JoinDTO joinDTO = new JoinDTO();
 		joinDTO.setMb_emaile(mb_emaile);
 		joinDTO.setMb_id(mb_id);
 		joinDTO.setMb_name(mb_name);
 		num = joinservice.pswdCheck(joinDTO);
 		return num;
 	}
 	
 	
 	
 	@RequestMapping(value = "findPswdPage", method = RequestMethod.POST)
	public String PostfindPswd(@RequestParam(value = "mb_emaile",required=true) String mb_emaile,
			@RequestParam(value = "mb_name",required=true) String mb_name
			,@RequestParam(value = "mb_id",required=true) String mb_id) {
 		
 		String pswd = "";
 		
 		Random rnd = new Random();
 		StringBuffer buf =new StringBuffer();

 		for(int i=0;i<10;i++){
 		    // rnd.nextBoolean() ??? ???????????? true, false ??? ??????. true??? ??? ?????? ??? ????????????, false ??? ??? ?????? ??? ????????? StringBuffer ??? append ??????.
 		    if(rnd.nextBoolean()){
 		        buf.append((char)((int)(rnd.nextInt(26))+97));
 		    }else{
 		        buf.append((rnd.nextInt(10)));
 		    }
 		}
 		pswd = buf.toString();
 		
 		
 		JoinDTO joindto = new JoinDTO();
 		joindto.setMb_pswd(pswd);
 		joindto.setMb_id(mb_id);
 		joindto.setMb_emaile(mb_emaile);
 		int num = joinservice.updateMember(joindto);
 		System.out.println(num);
 		if (num == 1) {
 			
 			JoinDTO dto = new JoinDTO();
 			dto.setMb_id(mb_id);
 			dto.setMb_name(mb_name);
 	 		dto.setMb_emaile(mb_emaile);
 	 		
 	 		LOG.info("????????? ????????? ?????? ??????");
 	 		LOG.info("???????????? : " + mb_emaile);
 	 			 		
 	 		
 	 		 String setFrom = "haejohalge@fdx.com";
 	         String toMail = mb_emaile;
 	         String title = "?????? ????????? ?????? ???????????? ?????????.";
 	         String content = "<div style=\"font-family: 'Apple SD Gothic Neo', 'sans-serif' !important; width: 540px; height: 600px; border-top: 4px solid #e3c4ff; margin: 100px auto; padding: 30px 0; box-sizing: border-box;\">\r\n" + 
 	         		"	<h1 style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">\r\n" + 
 	         		"		<span style=\"font-size: 15px; margin: 0 0 10px 3px;\">N:Source</span><br />\r\n" + 
 	         		"		<span style=\"color: #e3c4ff;\">?????? ????????????</span> ???????????????.\r\n" + 
 	         		"	</h1>\r\n" + 
 	         		"	<p style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">\r\n" + 
 	         		"		???????????????.<br />\r\n" + 
 	         		"		???????????? ?????? ??????????????? ?????????????????????.<br />\r\n" + 
 	         		"		?????? ??????????????? ??????????????????.<br />\r\n" + 
 	         		"		???????????????.\r\n" + 
 	         		"	</p>\r\n" + 
 	         		"\r\n" + 
 	         		"	<p style=\"font-size: 16px; margin: 40px 5px 20px; line-height: 28px;\">\r\n" + 
 	         		"		?????? ????????????: <br />\r\n" + 
 	         		"		<span style=\"font-size: 24px;\">"
 	         		+ pswd
 	         		+ "</span>\r\n" + 
 	         		"	</p>\r\n" + 
 	         		"	<div style=\"border-top: 1px solid #DDD; padding: 5px;\">\r\n" + 
 	         		"		<p style=\"font-size: 13px; line-height: 21px; color: #555;\">\r\n" + 
 	         		"			?????? ????????? ??????????????? ???????????? ????????????, ?????? ????????? ???????????? ????????? ?????????.<br />\r\n" + 
 	         		"		</p>\r\n" + 
 	         		"	</div>\r\n" + 
 	         		"</div>";
 	         try {
 	             
 	             MimeMessage message = mailSender.createMimeMessage();
 	             MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
 	            helper.setFrom(new InternetAddress("simbu@admin.admin", "admin"));
 	             helper.setTo(toMail);
 	             helper.setSubject(title);
 	             helper.setText(content,true);
 	             mailSender.send(message);
 	             
 	         }catch(Exception e) {
 	             e.printStackTrace();
 	         }
		}
 		
 		
 		
 		
         return "redirect:/";
	}
 	
 	
 	
 	@RequestMapping(value = "my_Info" ,method = RequestMethod.GET)
	public String info(@RequestParam(value = "mb_name") String mb_name,Model model) {
 		
 		JoinDTO dto = new JoinDTO();
 		dto = joinservice.myInfo(mb_name);
 		
 		model.addAttribute("mb_info", dto);
		return "mypage/myInfo";
	}
	
 	
 	
 	@RequestMapping(value = "mbDelete" ,method = RequestMethod.GET)
	public String goDeletePageS(@RequestParam(value = "mb_id") String mb_id,Model model) {
 		model.addAttribute("mb_id", mb_id);
		return "mypage/deletePage";
	}
	 	
 	@RequestMapping(value = "mbDelete" ,method = RequestMethod.POST)
 	@ResponseBody
 	public int deleteMb(@RequestParam(value = "mb_id") String mb_id,
 			@RequestParam(value = "mb_pswd") String mb_pswd,
 			HttpServletRequest request, HttpServletResponse response) {
 		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
 		JoinDTO joinDTO = new JoinDTO();
 		joinDTO = loginService.memberCheck(mb_id);
 		HttpSession session = request.getSession();	
 		int num = 0;
 		if (encoder.matches(mb_pswd, joinDTO.getMb_pswd())) {
 			num = joinservice.deleteMember(mb_id);
 			session.removeAttribute("mid");
 			session.removeAttribute("mNum");
		}else {
			if (mb_pswd.equals(joinDTO.getMb_pswd())) {
				num = joinservice.deleteMember(mb_id);
				session.removeAttribute("mid");
				session.removeAttribute("mNum");
			}
		}
 		return num;
 	}
 	
 	
 	
 	@RequestMapping(value = "mbUpdate" ,method = RequestMethod.GET)
	public String goUpdatePage(@RequestParam(value = "mb_id") String mb_id,Model model) {
 		JoinDTO joinDTO = new JoinDTO();
 		joinDTO = loginService.memberCheck(mb_id);
 		String emaile = joinDTO.getMb_emaile();
 		String [] emaleArray =  emaile.split("@");
 		
 		model.addAttribute("emaileArray", emaleArray);
 		model.addAttribute("mb_id", mb_id);
 		model.addAttribute("myInfo", joinDTO);
		return "mypage/updatePage";
	}
	 	
 	@RequestMapping(value = "mbUpdate" ,method = RequestMethod.POST)
 	public String updateMb(JoinDTO joinDTO
 			,HttpServletRequest request, HttpServletResponse response) {
 		int num = 0 ;
 		HttpSession session = request.getSession();	
 		System.out.println(joinDTO.getMb_emaile());
 		System.out.println(joinDTO.getMb_pswd());
 		System.out.println(joinDTO.getMb_id());
 		System.out.println(joinDTO.getMb_name());
 		num = joinservice.updateMember(joinDTO);
 		session.removeAttribute("mid");
		session.removeAttribute("mNum");
 		return "redirect:/";
 	}
 	
 	
 	
	@RequestMapping(value = "mbmatching" ,method = RequestMethod.POST)
	@ResponseBody
 	public int modalPswd(@RequestParam(value = "mb_id") String mb_id,
 			@RequestParam(value = "mb_pswd") String mb_pswd) {
 		
 		int num = 0;
 		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
 		JoinDTO joinDTO = new JoinDTO();
 		joinDTO = loginService.memberCheck(mb_id);
 		System.out.println(mb_pswd);
 		if (encoder.matches(mb_pswd, joinDTO.getMb_pswd())) {
			num = 1;
		}else {
			if (mb_pswd.equals(joinDTO.getMb_pswd())) {
				num = 1;
			}
		}
 		
 		return num;
 	}
 	
	@RequestMapping(value = "mailFrc_WthCheck" ,method = RequestMethod.GET)
	@ResponseBody
	public int mailFrc_WthCheck(@RequestParam(value = "mb_emaile") String mb_emaile) {
		int num = joinservice.mailFrc_WthCheck(mb_emaile);
		System.out.println(num);
		return num;
	}
	 	
}
