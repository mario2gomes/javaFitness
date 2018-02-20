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
import modelo.Aluno;
import modelo.Plano;

/**
 *
 * @author mário
 */
public class PlanoDao {
    private Connection conectar;
	
	public PlanoDao(){
		this.conectar = new Conexao().getConnection();
	}

	public Connection getConectar() {
		return conectar;
	}

	public void setConectar(Connection conectar) {
		this.conectar = conectar;
	}
	
	public void elaborar (Plano plano){
		String sql = "insert into programa (matriculaAluno,grupoMuscular,exercicio,tempo,series) values (?,?,?,?,?)";
		
		try {
		
			PreparedStatement stmt = conectar.prepareStatement(sql);
			                        
			stmt.setInt(1,plano.getMatricula());
			stmt.setString(2,plano.getGrupo());
			stmt.setString(3,plano.getExercicio());
			stmt.setInt(4,plano.getTempo());
			stmt.setInt(5,plano.getSeries());                        
			
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Plano> listar (int matricula){
		try{
			List<Plano> planos = new ArrayList<Plano>();
			PreparedStatement stmt = this.conectar.prepareStatement("select * from programa where matriculaAluno=?");
                            stmt.setInt(1,matricula);
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()){
				
				Plano plano = new Plano();
				
				plano.setMatricula(rs.getInt("matriculaAluno"));
                                plano.setGrupo(rs.getString("grupoMuscular"));
                                plano.setExercicio(rs.getString("exercicio"));
                                plano.setTempo(rs.getInt("tempo"));
                                plano.setSeries(rs.getInt("Series"));
				
				planos.add(plano);
			}
			rs.close();
			stmt.close();
			return planos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void alterar (int matricula, String interesse, double altura, double peso){
		
		String sql = "UPDATE aluno set interesse=?, altura=?, peso=? where matricula=?";
		try {
			PreparedStatement stmt = conectar.prepareStatement(sql);
			
			stmt.setString(1, interesse);
			stmt.setDouble(2, altura);
			stmt.setDouble(3, peso);
                        stmt.setInt(4, matricula);
			
			stmt.execute();			
			stmt.close();	
                        
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}		
	}
}
