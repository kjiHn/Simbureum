package com.fdx.controllers;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fdx.dto.JoinDTO;
import com.fdx.services.JoinService;

@RequestMapping(value = "/user/*")
@Controller
public class JoinController {
	
	private final static java.util.logging.Logger LOG = java.util.logging.Logger.getGlobal();
	
	@Autowired
	private JoinService joinservice;
	@Autowired
    private JavaMailSender mailSender;

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
        
 		/* 뷰(View)로부터 넘어온 데이터 확인 */ 
 		LOG.info("이메일 데이터 전송 확인");
 		LOG.info("인증번호 : " + email);
 			 		       
        
        /* 인증번호(난수) 생성 */
        Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111;
        LOG.info("인증번호 " + checkNum);
        
        
        String setFrom = "haejohalge@fdx.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = "	<div style='text-align: center;'>\r\n" + 
        		"		<div style='border: 1px solid black; display: inline-block; width: 500px; line-height: 30px; height: 250px; text-align: center;'>" + 
        		"			<h1>이메일인증</h1>" + 
        		"			<p>홈페이지를 방문해주셔서 감사합니다.</p>" + 
        		"			<p style='border: 1px solid black;display:inline-block; width: 300px'>이메일 인증번호는 <strong>"
        		+ checkNum
        		+"</strong> 입니다.</p>" + 
        		"			<br />" + 
        		"			<button style='padding: 10px; background-color: #e3c4ff; border: 1px gray solid'>" + 
        		"			<a href='/home' style=' text-decoration:none'> 홈으로 이동 </a>" + 
        		"			</button>\r\n" + 
        		"		</div>" + 
        		"	</div>";   
        
        
        try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
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
		
 		LOG.info("join 진입");
		
		// 회원가입 서비스 실행
		joinservice.insertMember(joinDTO);
		
		LOG.info("join Service 성공");
		
		return "redirect:/home";
	}
 	
 	
 	@RequestMapping(value = "findIdPage", method = RequestMethod.GET)
	public String findID() {
 		
 		return "join/findIDPage";
	}
 	
 	
 	@RequestMapping(value = "findPswdPage", method = RequestMethod.GET)
	public String findPswd() {
 		
 		return "join/findPswdPage";
	}
 	
 	
 	
 	@RequestMapping(value = "findIdPage", method = RequestMethod.POST)
	public String PostfindID(@RequestParam(value = "mb_emaile",required=true) String mb_emaile,
			@RequestParam(value = "mb_name",required=true) String mb_name) {
 		
 		String myId = "";
 		JoinDTO dto = new JoinDTO();
 		dto.setMb_name(mb_name);
 		dto.setMb_emaile(mb_emaile);
 		
 		LOG.info("이메일 데이터 전송 확인");
 		LOG.info("인증번호 : " + mb_emaile);
 		
 		
 		myId = joinservice.findID(dto);
 		
 		String setFrom = "haejohalge@fdx.com";
         String toMail = mb_emaile;
         String title = "찾으실 이메일의 아이디입니다.";
         String content = 
        		 "<div style='text-align: center;'>"+
 		"<div style='border: 1px solid black; display: inline-block; width: 500px; line-height: 50px; height: 250px; text-align: center;'>"+
 			"<h1>아이디 	찾기</h1>"+
 			"<p>회원가입 시 사용한 아이디는 <strong>"+
 			myId+
 			"</strong> 입니다.</p>"+
 			"<button style='padding: 10px; background-color: #e3c4ff; border: 1px gray solid'>" + 
 			"			<a href='http://home' style=' text-decoration:none'> 홈으로 이동 </a>" + 
 			"			</button>"+
 			
 		"</div>"+
 	"</div>";      
         try {
             
             MimeMessage message = mailSender.createMimeMessage();
             MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
             helper.setFrom(setFrom);
             helper.setTo(toMail);
             helper.setSubject(title);
             helper.setText(content,true);
             mailSender.send(message);
             
         }catch(Exception e) {
             e.printStackTrace();
         }
 		
 		
 		
         return "redirect:/home";
	}
 	
 	
 	
 	@RequestMapping(value = "findPswdPage", method = RequestMethod.POST)
	public String PostfindPswd(@RequestParam(value = "mb_emaile",required=true) String mb_emaile,
			@RequestParam(value = "mb_name",required=true) String mb_name
			,@RequestParam(value = "mb_id",required=true) String mb_id) {
 		
 		String pswd = "";
 		JoinDTO dto = new JoinDTO();
 		dto.setMb_name(mb_name);
 		dto.setMb_emaile(mb_emaile);
 		dto.setMb_id(mb_id);
 		
 		LOG.info("이메일 데이터 전송 확인");
 		LOG.info("인증번호 : " + mb_emaile);
 		
 		
 		pswd = joinservice.findPswd(dto);
 		
 		String setFrom = "haejohalge@fdx.com";
         String toMail = mb_emaile;
         String title = "찾으셨던 회원님의 비밀번호입니다.";
         String content = 
        		 "<div style='text-align: center;'>"+
 		"<div style='border: 1px solid black; display: inline-block; width: 500px; line-height: 30px; height: 250px; text-align: center;'>"+
 			"<h1>비밀번호 	찾기</h1>"+
 			"<p>회원가입 시 사용한 비밀번호는 <strong>"+
 			pswd+
 			"</strong> 입니다.</p>"+
 			"<p>빠른시일내에 변경해 주세여</p>" + 
 			"<button style='padding: 10px; background-color: #e3c4ff; border: 1px gray solid'>" + 
 			"			<a href='http://home' style=' text-decoration:none'> 홈으로 이동 </a>" + 
 			"			</button>"+
 			
 		"</div>"+
 	"</div>";
        		 
         try {
             
             MimeMessage message = mailSender.createMimeMessage();
             MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
             helper.setFrom(setFrom);
             helper.setTo(toMail);
             helper.setSubject(title);
             helper.setText(content,true);
             mailSender.send(message);
             
         }catch(Exception e) {
             e.printStackTrace();
         }
 		
 		
 		
         return "redirect:/home";
	}
 	
	 	
	 	
	 	
}
