package pw.ual.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProviderController {
	
	@RequestMapping("/provider")
	public String showProviderPage() {
		
		return "provider";
	}

}
