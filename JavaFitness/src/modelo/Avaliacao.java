/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Calendar;

/**
 *
 * @author mário
 */
public class Avaliacao {
    
    private int id;
    private int matriculaAluno;
    private Calendar data;

    public Calendar getData() {
        return data;
    }

    public int getMatriculaAluno() {
        return matriculaAluno;
    }

    public int getId() {
        return id;
    }        

    public void setData(Calendar data) {
        this.data = data;
    }

    public void setMatriculaAluno(int matriculaAluno) {
        this.matriculaAluno = matriculaAluno;
    }

    public void setId(int id) {
        this.id = id;
    }        
        
}
