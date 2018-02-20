/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import dao.AlunoDao;
import dao.PlanoDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.Aluno;
import modelo.Plano;

/**
 *
 * @author mário
 */
public class PlanoLogica  implements Logica{
    @Override
    public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
                        
        String[] exercicios = request.getParameterValues("exercicio");
                
        for (int i=0; i<exercicios.length; i++){
                        
            Plano plano = new Plano();              
            plano.setMatricula(Integer.parseInt(request.getParameter("aluno")));
            plano.setExercicio(exercicios[i]);
            plano.setTempo(Integer.parseInt(request.getParameter("tempo")));
            plano.setSeries(Integer.parseInt(request.getParameter("series")));                        
            
            switch(exercicios[i]){
                case "supino-reto": case "supino-inclinado": case "voador":
                    plano.setGrupo("peito");
                    break;
                case "puxada-frente":case "puxada-costas":case "remada-baixa":
                    plano.setGrupo("costas");
                    break;
                case "rosca-direta": case "scott": case "rosca-inversa":
                    plano.setGrupo("bíceps");
                    break;
                case "puxada-corda": case "puxada-lateral": case "puxada-inversa":
                    plano.setGrupo("tríceps");
                    break;
                case "agachamento": case "abducao":case "aducao":
                    plano.setGrupo("pernas");
                    break;    
            }
            
            PlanoDao pd = new PlanoDao();
            pd.elaborar(plano);
            
        }                        

            AlunoDao ad = new AlunoDao();
                List <Aluno> alunos = ad.listar();		               
                System.out.println("alunos[1].nome");
                request.setAttribute("alunos", alunos);

                JOptionPane.showMessageDialog(null, "Plano elaborado com sucesso com sucesso");                        
                return "entrada-instrutor.jsp";
    }
}