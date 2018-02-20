/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import dao.AlunoDao;
import dao.FuncionarioDao;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.Aluno;
import modelo.Funcionario;

/**
 *
 * @author mário
 */
public class Cadastrar implements Logica{
    
    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {            
        
        //Date d = new Date();
        //Calendar cal = new GregorianCalendar();
        //cal.setTime(d.getTime());
                   
        if (request.getParameter("modo").equals("aluno")){
            Aluno aluno = new Aluno();
            aluno.setNome(request.getParameter("nome"));
            aluno.setSenha(request.getParameter("senha"));
            //aluno.setDataMatricula(request.getParameter("hoje"));        
            aluno.setInteresse(request.getParameter("interesse"));
            aluno.setSexo(request.getParameter("sexo"));
            aluno.setAltura(Double.parseDouble(request.getParameter("altura").replaceAll(",",".")));
            aluno.setPeso(Double.parseDouble(request.getParameter("peso").replaceAll(",",".")));    
            
            String date = request.getParameter("nascimento");       
            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd"); 
            java.util.Date data = formato.parse(date); 
            Calendar cal = Calendar.getInstance();
            cal.setTime(data);			
            aluno.setNascimento(cal);

            AlunoDao ad = new AlunoDao();
            ad.cadastrar(aluno);

            JOptionPane.showMessageDialog(null, "Aluno " + request.getParameter("nome") + " matriculado com sucesso");
            String tipo = request.getParameter("type");
            request.setAttribute("tipo", aluno);
                return "controle?logica=Listar";
        }
        
        if (request.getParameter("modo").equals("funcionario")){
        
            Funcionario funcionario = new Funcionario();
            funcionario.setNome(request.getParameter("nome"));
            funcionario.setSenha(request.getParameter("senha"));        
            funcionario.setTipo(request.getParameter("tipo"));    

            FuncionarioDao ad = new FuncionarioDao();
            ad.cadastrar(funcionario);

            JOptionPane.showMessageDialog(null, "Funcionário " + request.getParameter("nome") + " matriculado com sucesso");
            
            return "controle?logica=Listar";    
        }
        
        else {
            return "controle?logica=Listar";
        }
    }        
	
}
