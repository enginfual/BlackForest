package pw.ual.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import pw.ual.model.Client;

//é necessario fazer imports antes de usar esta classe
public class ClientDBRowMapper implements RowMapper<Client>{

	public Client mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Client client = new Client();
		
		client.setId(rs.getInt("client.id"));
		client.setName(rs.getString("client.name"));
		client.setEmail(rs.getString("client.email"));
		
		
		return client;
	}
	
	

}
