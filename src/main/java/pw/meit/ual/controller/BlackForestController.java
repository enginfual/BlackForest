package pw.meit.ual.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BlackForestController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String page() {
		return "mainPage";
	}

}
