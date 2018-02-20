package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import modelo.Aluno;

public class AlunoDao {

	private Connection conectar;
	
	public AlunoDao(){
		this.conectar = new Conexao().getConnection();
	}

	public Connection getConectar() {
		return conectar;
	}

	public void setConectar(Connection conectar) {
		this.conectar = conectar;
	}
	
	public void cadastrar (Aluno aluno){
		String sql = "insert into aluno (nome,dataMatricula,nascimento,sexo,interesse,altura,peso,senha) values (?,?,?,?,?,?,?,MD5(?))";
		
		try {
		
			PreparedStatement stmt = conectar.prepareStatement(sql);
			                        
			stmt.setString(1,aluno.getNome());
			stmt.setDate(2, new Date ( GregorianCalendar.getInstance().getTimeInMillis()));
			stmt.setDate(3, new Date ( aluno.getNascimento().getTimeInMillis()));
			stmt.setString(4,aluno.getSexo());
			stmt.setString(5,aluno.getInteresse());
			stmt.setDouble(6,aluno.getAltura());
			stmt.setDouble(7,aluno.getPeso());
                        stmt.setString(8,aluno.getSenha());
			
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Aluno> listar (){
		try{
			List<Aluno> alunos = new ArrayList<Aluno>();
			PreparedStatement stmt = this.conectar.prepareStatement("select * from aluno");
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()){
				
				Aluno aluno = new Aluno();
				
				aluno.setMatricula(rs.getInt("matricula"));
				aluno.setNome(rs.getString("nome"));				
				
				Calendar data = Calendar.getInstance();
				
				data.setTime(rs.getDate("nascimento"));
				aluno.setNascimento(data);
				
				data.setTime(rs.getDate("dataMatricula"));
				aluno.setDataMatricula(data);
				
				aluno.setSexo(rs.getString("sexo"));
				aluno.setInteresse(rs.getString("interesse"));
				aluno.setAltura(rs.getDouble("altura"));
				aluno.setPeso(rs.getDouble("peso"));
				
				alunos.add(aluno);
			}
			rs.close();
			stmt.close();
			return alunos;
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
	
	public void remove (int matricula){
		try{
			PreparedStatement stmt = conectar.prepareStatement("delete from aluno where matricula=" + matricula);
			
			stmt.execute();
			
			System.out.println("Aluno removido");
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}		
	}
	
	public Aluno validar (String matricula, String senha){
	
		try{
		Aluno aluno = new Aluno();
		PreparedStatement stmt = this.conectar.prepareStatement("select * from aluno where matricula=" +
					matricula + " and senha=md5('" + senha + "')");
		ResultSet rs = stmt.executeQuery();
					
		while (rs.next()){
			aluno.setMatricula(rs.getInt("matricula"));
			aluno.setNome(rs.getString("nome"));				
			
			Calendar data = Calendar.getInstance();
			
			data.setTime(rs.getDate("nascimento"));
			aluno.setNascimento(data);
			
			data.setTime(rs.getDate("dataMatricula"));
			aluno.setDataMatricula(data);
			
			aluno.setSexo(rs.getString("sexo"));
			aluno.setInteresse(rs.getString("interesse"));
			aluno.setAltura(rs.getDouble("altura"));
			aluno.setPeso(rs.getDouble("peso"));
		}
	
		rs.close();
		stmt.close();
		return aluno;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}	
}