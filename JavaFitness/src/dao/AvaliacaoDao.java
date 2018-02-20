/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import modelo.Avaliacao;

/**
 *
 * @author mário
 */
public class AvaliacaoDao {

	private Connection conectar;
	
	public AvaliacaoDao(){
		this.conectar = new Conexao().getConnection();
	}

	public Connection getConectar() {
		return conectar;
	}

	public void setConectar(Connection conectar) {
		this.conectar = conectar;
	}
	
	public void inserir (Avaliacao avaliacao){
		String sql = "insert into avaliacao (data) values (?)";
		
		try {
		
			PreparedStatement stmt = conectar.prepareStatement(sql);
			                        						
			stmt.setDate(1, new Date ( avaliacao.getData().getTimeInMillis()));
			
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Avaliacao> listar (){
		try{
			List<Avaliacao> avaliacaos = new ArrayList<Avaliacao>();
			PreparedStatement stmt = this.conectar.prepareStatement("select * from avaliacao");
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()){
				
				Avaliacao avaliacao = new Avaliacao();
								
				avaliacao.setId(rs.getInt("id"));
				Calendar data = Calendar.getInstance();
				
				data.setTime(rs.getDate("data"));
				avaliacao.setData(data);
				
				avaliacaos.add(avaliacao);
			}
			rs.close();
			stmt.close();
			return avaliacaos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
		
	public void remove (int id){
		try{
			PreparedStatement stmt = conectar.prepareStatement("delete from avaliacao where id=" + id);
			
			stmt.execute();
			
			System.out.println("Avaliacao removida");
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}		
	}				
}