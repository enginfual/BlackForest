package pw.ual.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Component;

import pw.ual.dao.ClientDAO;
import pw.ual.model.Client;

//indica que esta classe +e um componente da aplicação -> classes candidatas para auto detecção
@Component
public class ClientDAOImpl implements ClientDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setTransactionManager(DataSourceTransactionManager transactionManager) {
		
		DataSource dataSource = transactionManager.getDataSource();
		jdbcTemplate = new JdbcTemplate(dataSource);
		
	}

	public List<Client> getAllClients() {

		String sql = "Select * FROM client;";

		List<Client> clientList = new ArrayList<Client>();
		try {
			clientList = jdbcTemplate.query(sql, new ClientDBRowMapper());
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return clientList;
	}

	public List<Client> getClientByNumber(String number) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean deleteClientByNumber(List<Integer> cliNumbers) {

		String sql = "DELETE FROM client WHERE id = ? ;";
		try {
			for (Integer i : cliNumbers) {
				jdbcTemplate.update(sql, new Object[] { i });
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return true;
	}

	public boolean insertClient(Client clientDB) {
		String sql = "INSERT INTO client (name,email)" + "VALUES (?, ?);";
		try {
			jdbcTemplate.update(sql, new Object[] { clientDB.getName(), clientDB.getEmail() });
		} catch (Exception e) {
			System.out.println(e);
		}
		return true;
	}

	public boolean updateClient(Client clientDB) {
		String sql = "UPDATE client " + "SET name = ?, email = ?" + "WHERE id = ?;";

		try {
			jdbcTemplate.update(sql, new Object[] { clientDB.getName(), clientDB.getEmail() });
		} catch (Exception e) {
			System.out.println(e);
		}

		return true;
	}

}
