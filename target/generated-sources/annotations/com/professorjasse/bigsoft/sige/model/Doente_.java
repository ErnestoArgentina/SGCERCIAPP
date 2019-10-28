package com.professorjasse.bigsoft.sige.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Doente.class)
public abstract class Doente_ {

	public static volatile SingularAttribute<Doente, String> senha;
	public static volatile SingularAttribute<Doente, String> telefone1;
	public static volatile SingularAttribute<Doente, Encarregado> encarregado;
	public static volatile SingularAttribute<Doente, Integer> idEncarregado;
	public static volatile SingularAttribute<Doente, String> genero;
	public static volatile SingularAttribute<Doente, String> nome;
	public static volatile SingularAttribute<Doente, Integer> id;
	public static volatile SingularAttribute<Doente, String> perfil;

	public static final String SENHA = "senha";
	public static final String TELEFONE1 = "telefone1";
	public static final String ENCARREGADO = "encarregado";
	public static final String ID_ENCARREGADO = "idEncarregado";
	public static final String GENERO = "genero";
	public static final String NOME = "nome";
	public static final String ID = "id";
	public static final String PERFIL = "perfil";

}

