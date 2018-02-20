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
import modelo.Funcionario;
import modelo.Instrutor;

/**
 *
 * @author mário
 */
public class FuncionarioDao {
        
		Connection conectar;
		
		public FuncionarioDao(){
			this.conectar = new Conexao().getConnection();
		}

		public Connection getConectar() {
			return conectar;
		}

		public void setConectar(Connection conectar) {
			this.conectar = conectar;
		}
    
            public Funcionario validar (String matricula, String senha){
	
		try{
		Funcionario funcionario = new Funcionario();
		PreparedStatement stmt = this.conectar.prepareStatement("select * from funcionario where matricula=" +
					matricula + " and senha=md5('" + senha + "')");
		ResultSet rs = stmt.executeQuery();
					
		while (rs.next()){
			funcionario.setMatricula(rs.getInt("matricula"));
			funcionario.setNome(rs.getString("nome"));				
			
			Calendar data = Calendar.getInstance();
			
			data.setTime(rs.getDate("admissao"));
			funcionario.setDataAdmissao(data);
                        
                        funcionario.setTipo (rs.getString("tipo"));
		}
	
		rs.close();
		stmt.close();
		return funcionario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
    }
    
    public void cadastrar (Funcionario funcionario){
			String sql = "insert into funcionario (nome,admissao,tipo,senha) values (?,?,?,MD5(?))";
			
			try {
			
				PreparedStatement stmt = conectar.prepareStatement(sql);
				
				stmt.setString(1,funcionario.getNome());
				stmt.setDate(2, new Date (GregorianCalendar.getInstance().getTimeInMillis()));
				stmt.setString(3,funcionario.getTipo());
                                stmt.setString(4,funcionario.getSenha());
                                
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		
		public List<Funcionario> listar (){
			try{
				List<Funcionario> funcionarios = new ArrayList<Funcionario>();
				PreparedStatement stmt = this.conectar.prepareStatement("select * from funcionario");
				ResultSet rs = stmt.executeQuery();
				
				while (rs.next()){
					
					Funcionario funcionario = new Funcionario();
					
					funcionario.setMatricula(rs.getInt("matricula"));
					funcionario.setNome(rs.getString("nome"));
                                        
                                        Calendar data = Calendar.getInstance();
					data.setTime(rs.getDate("admissao"));
                                        funcionario.setDataAdmissao(data);
                                        
                                        funcionario.setTipo(rs.getString("tipo"));
										
					funcionarios.add(funcionario);
				}
				rs.close();
				stmt.close();
				return funcionarios;
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		
		public void remove (int matricula){
			try{
				PreparedStatement stmt = conectar.prepareStatement("delete from funcionario where matricula=" + matricula);
				
				stmt.execute();								
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}		
		}
}
    
