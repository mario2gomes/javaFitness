package logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import dao.AlunoDao;
import dao.FuncionarioDao;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import modelo.Aluno;
import modelo.Funcionario;

public class ValidaLogin implements Logica{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		if (request.getParameter("matricula").equals("") || request.getParameter("senha").equals("")){
			JOptionPane.showMessageDialog(null,"Favor inserir uma matrícula e senha");
                                    if(request.getParameter("modo").equals("cordenacao")){
                                        return "login-cordenacao.jsp";
                                    }
                                    if(request.getParameter("modo").equals("instrutor")){
                                        return "login-instrutor.jsp";
                                    }
		}else{
                    if (request.getParameter("modo").equals("aluno")){
			AlunoDao ad = new AlunoDao();
			Aluno aluno = new Aluno();
			aluno = ad.validar(request.getParameter("matricula"), request.getParameter("senha"));                                                
			
			if (aluno.getNome() == null){
				JOptionPane.showMessageDialog(null,"Matrícula ou senha incorretos, favor digitar valores válidos");
			}
			else{
                                request.setAttribute("aluno", aluno);
				return "entrada-aluno.jsp";
			}
                    }
                    if (request.getParameter("modo").equals("cordenacao")||request.getParameter("modo").equals("instrutor")){
                        FuncionarioDao fd = new FuncionarioDao();
			Funcionario funcionario = new Funcionario();
			funcionario = fd.validar(request.getParameter("matricula"), request.getParameter("senha"));
			
			if (funcionario.getNome() == null){
				JOptionPane.showMessageDialog(null,"Matrícula ou senha incorretos, favor digitar valores válidos");
                                    if(request.getParameter("modo").equals("cordenacao")){
                                        return "login-cordenacao.jsp";
                                    }
                                    if(request.getParameter("modo").equals("instrutor")){
                                        return "login-instrutor.jsp";
                                    }
			}
			else{
                                request.setAttribute("funcionario", funcionario);
                                if(request.getParameter("modo").equals("instrutor")){
                                    return "entrada-instrutor.jsp";   
                                }
                                if(request.getParameter("modo").equals("cordenacao")){
                                    return "entrada-cordenacao.jsp";
                                }
			}
                    }                                                
		}
		return "login-aluno.jsp";
	}
}