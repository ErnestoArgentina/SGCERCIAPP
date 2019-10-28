package model;


import com.professorjasse.bigsoft.sige.model.*;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="tabela_utilizador")
public class User {

        @Id
        @GeneratedValue (strategy = GenerationType.IDENTITY) 
        private Integer id;
        @Column
	private String email;
        @Column
	private String senha;
        @Column
	private String contacto;
        @Column
	private String nacionalidade;
        @Column
	private String nome;
        @Column
	private char sexo;
        @Column
	private Date data_nascimento;
        @Column
	private String perfil;

    public User() {
    }

    public User(int id, String email, String senha, String contacto, String nacionalidade, String nome, char sexo, Date data_nascimento) {
        this.id = id;
        this.email = email;
        this.senha = senha;
        this.contacto = contacto;
        this.nacionalidade = nacionalidade;
        this.nome = nome;
        this.sexo = sexo;
        this.data_nascimento = data_nascimento;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
    
    
    public Integer getId() {
        return id;
    }

//    public void setId(int id) {
//        this.id = id;
//    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getContacto() {
        return contacto;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }

    public String getNacionalidade() {
        return nacionalidade;
    }

    public void setNacionalidade(String nacionalidade) {
        this.nacionalidade = nacionalidade;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public Date getData_nascimento() {
        return data_nascimento;
    }

    public void setData_nascimento(Date data_nascimento) {
        this.data_nascimento = data_nascimento;
    }
        
        

	public void gerir() {

	}

	public void autenticar() {

	}


	public void editarAvaliacao() {

		}

	public void eliminarAvaliacao() {

		}

        public void setId(Integer id) {
        this.id = id;    
        }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", email=" + email + ", senha=" + senha + ", contacto=" + contacto + ", nacionalidade=" + nacionalidade + ", nome=" + nome + ", sexo=" + sexo + ", data_nascimento=" + data_nascimento + '}';
    }
        
        

	
}
