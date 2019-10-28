package com.professorjasse.bigsoft.sige.model;

import com.professorjasse.bigsoft.sige.model.Educador;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
//import com.professorjasse.bigsoft.sige.model.Encarregado;

@Entity
public class AvaliacaoPorArea {

    @Id
    @GeneratedValue
    private int id;

    @ManyToOne
    private Educador educador;

    @ManyToOne
    private Doente doente;
    
    private int idAluno;

    private String regulaNecessidadesBasicas;
    private String colaboraAdultosTerefas;
    private String arrumaCoisa;
    private String condutasGrupos;
    private String higiene;
    
    private String conhecimentoPartesPrincipaisCorpo;
    
    private String concluiFormasGenericas;
    private String compreendeOqueEDito;
    private String imaginacao;
    private String percepcao;
    
    private String formasGeometricas;
    private String distinguiTamanhos;
    private String fazCalculos;
    
    private String conheceAlfabeto;
    private String reconhecePalavras;
    private String leTextosSimples;
    
    private String gostaDeMusica;
    private String tocaIstrumentos;
    private String interpretaCancoesSimples;
    
    private Date data;
   
    

    public AvaliacaoPorArea() {
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }
    

    public Educador getEducador() {
        return educador;
    }

    public void setEducador(Educador educador) {
        this.educador = educador;
    }

    public Doente getDoente() {
        return doente;
    }

    public void setDoente(Doente doente) {
        this.doente = doente;
    }

    public int getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(int idAluno) {
        this.idAluno = idAluno;
    }

    public String getRegulaNecessidadesBasicas() {
        return regulaNecessidadesBasicas;
    }

    public void setRegulaNecessidadesBasicas(String regulaNecessidadesBasicas) {
        this.regulaNecessidadesBasicas = regulaNecessidadesBasicas;
    }

    public String getColaboraAdultosTerefas() {
        return colaboraAdultosTerefas;
    }

    public void setColaboraAdultosTerefas(String colaboraAdultosTerefas) {
        this.colaboraAdultosTerefas = colaboraAdultosTerefas;
    }

    public String getArrumaCoisa() {
        return arrumaCoisa;
    }

    public void setArrumaCoisa(String arrumaCoisa) {
        this.arrumaCoisa = arrumaCoisa;
    }

    public String getCondutasGrupos() {
        return condutasGrupos;
    }

    public void setCondutasGrupos(String condutasGrupos) {
        this.condutasGrupos = condutasGrupos;
    }

    public String getHigiene() {
        return higiene;
    }

    public void setHigiene(String higiene) {
        this.higiene = higiene;
    }

    public String getConhecimentoPartesPrincipaisCorpo() {
        return conhecimentoPartesPrincipaisCorpo;
    }

    public void setConhecimentoPartesPrincipaisCorpo(String conhecimentoPartesPrincipaisCorpo) {
        this.conhecimentoPartesPrincipaisCorpo = conhecimentoPartesPrincipaisCorpo;
    }

    public String getConcluiFormasGenericas() {
        return concluiFormasGenericas;
    }

    public void setConcluiFormasGenericas(String concluiFormasGenericas) {
        this.concluiFormasGenericas = concluiFormasGenericas;
    }

    public String getCompreendeOqueEDito() {
        return compreendeOqueEDito;
    }

    public void setCompreendeOqueEDito(String compreendeOqueEDito) {
        this.compreendeOqueEDito = compreendeOqueEDito;
    }

    public String getImaginacao() {
        return imaginacao;
    }

    public void setImaginacao(String imaginacao) {
        this.imaginacao = imaginacao;
    }

    public String getPercepcao() {
        return percepcao;
    }

    public void setPercepcao(String percepcao) {
        this.percepcao = percepcao;
    }

    public String getFormasGeometricas() {
        return formasGeometricas;
    }

    public void setFormasGeometricas(String formasGeometricas) {
        this.formasGeometricas = formasGeometricas;
    }

    public String getDistinguiTamanhos() {
        return distinguiTamanhos;
    }

    public void setDistinguiTamanhos(String distinguiTamanhos) {
        this.distinguiTamanhos = distinguiTamanhos;
    }

    public String getFazCalculos() {
        return fazCalculos;
    }

    public void setFazCalculos(String fazCalculos) {
        this.fazCalculos = fazCalculos;
    }

    public String getConheceAlfabeto() {
        return conheceAlfabeto;
    }

    public void setConheceAlfabeto(String conheceAlfabeto) {
        this.conheceAlfabeto = conheceAlfabeto;
    }

    public String getReconhecePalavras() {
        return reconhecePalavras;
    }

    public void setReconhecePalavras(String reconhecePalavras) {
        this.reconhecePalavras = reconhecePalavras;
    }

    public String getLeTextosSimples() {
        return leTextosSimples;
    }

    public void setLeTextosSimples(String leTextosSimples) {
        this.leTextosSimples = leTextosSimples;
    }

    public String getGostaDeMusica() {
        return gostaDeMusica;
    }

    public void setGostaDeMusica(String gostaDeMusica) {
        this.gostaDeMusica = gostaDeMusica;
    }

    public String getTocaIstrumentos() {
        return tocaIstrumentos;
    }

    public void setTocaIstrumentos(String tocaIstrumentos) {
        this.tocaIstrumentos = tocaIstrumentos;
    }

    public String getInterpretaCancoesSimples() {
        return interpretaCancoesSimples;
    }

    public void setInterpretaCancoesSimples(String interpretaCancoesSimples) {
        this.interpretaCancoesSimples = interpretaCancoesSimples;
    }
    
    
    
    
    

   }
