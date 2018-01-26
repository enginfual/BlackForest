package pw.ual.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pw.ual.dao.ClientDAO;
import pw.ual.model.Client;

//indica que a classe é um controller
@Controller
public class ClientController {
	
	//indica que a referencia clientDao vai ser automaticamente carregada
	@Autowired
	private ClientDAO clientDao;
	
	//indica que o metodo showclients vai estar associado ao endereço clientlist atraves do metodo GET do HTTP
	@RequestMapping("/clientlist")
	public ModelAndView showClients() {
		System.out.println("in controller");
		
		
		List<Client> clients = clientDao.getAllClients();
		
		//So para apresentar na consola
		
		//Não apropriado para produção
		for(int i=0;i<clients.size();i++)
			System.out.println(clients.get(i));
		
		
		ModelAndView mv = new ModelAndView("clients");
		mv.addObject("clients", clients);
		
		return mv;
	}
	
	//indica que o metodo showAddClientForm vai estar associado ao endereço "clients/add"
	//Neste metodo é criado um objecto default e enviado para o jsp clientForm
	@RequestMapping(value = "/clients/add", method=RequestMethod.GET)
	public String showAddClientForm(Model model) {
		
		Client user = new Client();
		
		//set default value
		user.setName("mkyong123");
		user.setEmail("test@gmail.com");
		
		model.addAttribute("clientForm", user);
		
		return "clientForm";
		
	}
	
	
	
	
	//é usado para registar um novo cliente cujos dados são enviados pelo POST do HTTP
	//no metodo "saveOrUpdateClient" o novo client é inserido na base de dados atraves do DAO
	@RequestMapping(value="/clients", method = RequestMethod.POST)
	public String saveOrUpdateClient(@ModelAttribute("ClientForm") Client client, BindingResult result, Model model,
			final RedirectAttributes redirectAttributes) {
		
			System.out.println("Inside add Client");
			
			if(client.isNewClient())clientDao.insertClient(client);
			else clientDao.updateClient(client);
			
			return "redirect:/clientlist";
		
		
	}

}
