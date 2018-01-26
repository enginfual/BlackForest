package pw.ual.model;

//Class POJO
//Representa um cliente
public class Client {
	
	private int id;
	private String name;
	private String email;
	private boolean newClient = true;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isNewClient() {
		return newClient;
	}
	public void setNewClient(boolean newClient) {
		this.newClient = newClient;
	}
	
	@Override
	public String toString() {
		return "Client [id=" + id + ", name=" + name + ", email=" + email + ", newClient=" + newClient + "]";
	}
	
	
	

}
