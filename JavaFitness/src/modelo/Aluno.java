package modelo;

import java.util.Calendar;

public class Aluno {

		private int matricula;
		private String nome;
		private Calendar dataMatricula;
		private Calendar nascimento;
		private String sexo;
		private String interesse;
		private double altura;
		private double peso;
                private String senha;
		
		public Aluno() {
			super();
		}
		
		public String getNome() {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;
		}
		public int getMatricula() {
			return matricula;
		}
		public void setMatricula(int matricula) {
			this.matricula = matricula;
		}
		public Calendar getDataMatricula() {
			return dataMatricula;
		}
		public void setDataMatricula(Calendar dataMatricula) {
			this.dataMatricula = dataMatricula;
		}
		public Calendar getNascimento() {
			return nascimento;
		}
		public void setNascimento(Calendar nascimento) {
			this.nascimento = nascimento;
		}

		public String getSexo() {
			return sexo;
		}

		public void setSexo(String sexo) {
			this.sexo = sexo;
		}

		public String getInteresse() {
			return interesse;
		}

		public void setInteresse(String interesse) {
			this.interesse = interesse;
		}

		public double getAltura() {
			return altura;
		}

		public void setAltura(double altura) {
			this.altura = altura;
		}

		public double getPeso() {
			return peso;
		}

		public void setPeso(double peso) {
			this.peso = peso;
		}		

                public void setSenha(String senha) {
                    this.senha = senha;
                }

                public String getSenha() {
                    return senha;
                }		
}
