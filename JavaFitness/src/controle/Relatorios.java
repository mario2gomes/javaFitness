package controle;

import dao.AlunoDao;
import dao.Conexao;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

@WebServlet("/Relatorios")
public class Relatorios extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {       
        
	   String modo = "";
       if (request.getParameter("modo").equals("aluno")){
           modo = "/relatorios/alunos.jrxml";
       }
       if (request.getParameter("modo").equals("funcionario")){
           modo = "/relatorios/funcionarios.jrxml";
       }
        //cria relatório
        JasperReport report = null;
	InputStream reportStream = null;
	    try { 
	    	reportStream = getServletConfig().getServletContext().getResourceAsStream(modo);
	    	report = JasperCompileManager.compileReport(reportStream);
                System.out.println("relatorio criado");
		} catch (JRException e) {
                    System.out.println("erro na criação do relatório");
                    e.printStackTrace();
		}
            
        // preenche os dados do relatório
	JasperPrint print = null;
            try {
                System.out.println("tentando preencher");
                print = JasperFillManager.fillReport(report, null, new Conexao().getConnection());                                                
                System.out.println("relatorio preenchido");
            } catch (JRException e) {
                System.out.println("erro no preenchimento do relatório");
		e.printStackTrace();
		}

        //exportação do relatório
        byte[] bytes = null;
            try {
                bytes = JasperExportManager.exportReportToPdf(print);                      
            } catch (JRException e) {
                System.out.println("erro na exportação do relatório");
                e.printStackTrace();
		}                                                                                    

                response.setContentType("application/pdf");     
		response.setContentLength(bytes.length);     
		ServletOutputStream ouputStream = response.getOutputStream();     
		ouputStream.write(bytes, 0, bytes.length);     
		ouputStream.flush();     
		ouputStream.close();                  		
	}    

    @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		this.doGet(request, response);
	}
}