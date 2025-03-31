package egovframework.board.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/task01")
public class Task01Controller {
	
	Logger log = LoggerFactory.getLogger(getClass());
	
	@GetMapping("/index.do")
	public String index() {
		return "tiles/task01/index";
	}
	@RequestMapping("/testForm.do")
	public String testForm(@RequestParam("btnType") String actionType, Model model) {
		model.addAttribute("btnType", actionType);
		if(actionType.equals("edit")) {
			model.addAttribute("username", "수정이름");
			model.addAttribute("userTel", "수정전화");
			model.addAttribute("userAddr", "수정주소");
			model.addAttribute("userMail", "edit@mail.com");
			model.addAttribute("contents", "수정 내용");
		}
		return "tiles/task01/testForm";
	}
	@RequestMapping("/getLog.do")
	public String getLog(@RequestParam Map<String, String> params) {
		
		if(params.get("btnType").equals("edit")) {
			log.info("####### 수정 #######");
		} else {
			log.info("####### 등록 #######");
		}
		log.info("  ## 이름 : " + params.get("username") );
		log.info("  ## 연락처 : " + params.get("userTel") );
		log.info("  ## 주소 :" + params.get("userAddr") );
		log.info("  ## 이메일 :" + params.get("userMail") );
		log.info("  ## 이메일 :" + params.get("contents") );
		return "redirect:/task01/index.do";
	} 
}
