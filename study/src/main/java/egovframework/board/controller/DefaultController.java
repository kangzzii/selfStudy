package egovframework.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DefaultController {
	@GetMapping("/main.do")
	public String main() {
		return "tiles/default/index";
	}
}
