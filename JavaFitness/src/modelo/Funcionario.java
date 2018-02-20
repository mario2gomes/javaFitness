package modelo;

import java.util.Calendar;

public class Funcionario {
		 
		private String nome;
		private int matricula;
		private Calendar dataAdmissao;
                private String tipo;
                private String senha;
		
		public Funcionario() {
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

		public void setMatricula(int matrricula) {
			this.matricula = matrricula;
		}

		public Calendar getDataAdmissao() {
			return dataAdmissao;
		}

		public void setDataAdmissao(Calendar dataAdmissao) {
			this.dataAdmissao = dataAdmissao;
		}

                public String getSenha() {
                    return senha;
                }

                public void setSenha(String senha) {
                    this.senha = senha;
                }

                public void setTipo(String tipo) {
                    this.tipo = tipo;
                }

                public String getTipo() {
                    return tipo;
                }
	}