package pw.ual.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String goHome() {
		return "homeBlackForest";
	}
	
	 @RequestMapping(value = "/homeBlackForest", method = RequestMethod.GET)
	   public String redirect() {
	      return "redirect:aboutUs";
	

}
}
