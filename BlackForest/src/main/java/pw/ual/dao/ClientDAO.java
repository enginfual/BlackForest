package pw.ual.dao;

import java.util.List;

import pw.ual.model.Client;

public interface ClientDAO {
	
	public List<Client> getAllClients();
	
	public List<Client> getClientByNumber (String number);
	
	public boolean deleteClientByNumber(List<Integer>cliNumbers);
	
	public boolean insertClient(Client clientDB);
	
	public boolean updateClient(Client clientDB);
	

}
