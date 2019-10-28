package model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(User.class)
public abstract class User_ {

	public static volatile SingularAttribute<User, String> senha;
	public static volatile SingularAttribute<User, String> contacto;
	public static volatile SingularAttribute<User, Date> data_nascimento;
	public static volatile SingularAttribute<User, String> nome;
	public static volatile SingularAttribute<User, Integer> id;
	public static volatile SingularAttribute<User, String> nacionalidade;
	public static volatile SingularAttribute<User, Character> sexo;
	public static volatile SingularAttribute<User, String> email;
	public static volatile SingularAttribute<User, String> perfil;

	public static final String SENHA = "senha";
	public static final String CONTACTO = "contacto";
	public static final String DATA_NASCIMENTO = "data_nascimento";
	public static final String NOME = "nome";
	public static final String ID = "id";
	public static final String NACIONALIDADE = "nacionalidade";
	public static final String SEXO = "sexo";
	public static final String EMAIL = "email";
	public static final String PERFIL = "perfil";

}

