import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Utilizador.class)
public abstract class Utilizador_ {

	public static volatile SingularAttribute<Utilizador, String> senha;
	public static volatile SingularAttribute<Utilizador, String> contacto;
	public static volatile SingularAttribute<Utilizador, Date> data_nascimento;
	public static volatile SingularAttribute<Utilizador, String> nome;
	public static volatile SingularAttribute<Utilizador, Integer> id;
	public static volatile SingularAttribute<Utilizador, String> nacionalidade;
	public static volatile SingularAttribute<Utilizador, Character> sexo;
	public static volatile SingularAttribute<Utilizador, String> email;

	public static final String SENHA = "senha";
	public static final String CONTACTO = "contacto";
	public static final String DATA_NASCIMENTO = "data_nascimento";
	public static final String NOME = "nome";
	public static final String ID = "id";
	public static final String NACIONALIDADE = "nacionalidade";
	public static final String SEXO = "sexo";
	public static final String EMAIL = "email";

}

