package com.professorjasse.bigsoft.sige.model;

import com.professorjasse.bigsoft.sige.model.Educador;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
//import com.professorjasse.bigsoft.sige.model.Encarregado;

@Entity
public class AvaliacaoPeriodica {

    @Id
    @GeneratedValue
    private int id;

    @ManyToOne
    private Educador educador;

    @ManyToOne
    private Doente doente;
    
    private int idAluno;

    private String observacoes;
    private String temperamento;
    private String comportamento;
    private String relacaoOutrasCriancas;
    private String participacaoGrupo;

    private String comeComEducador;
    private String posicaoNaMesa;
    private String usaTalheres;
    private String higienePessoal;
    private String organizadoExemplo;

    private String atencao;
    private String memoria;
    private String imaginacao;
    private String percepcao;

    private String coordenacaoMovimentos;
    private String destrezaManual;
    private String equilibrioGlobal;
    
    private Date data;

    public AvaliacaoPeriodica() {
    }

    public int getId() {
        return id;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }
    
    

    public Doente getDoente() {
        return doente;
    }

    public int getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(int idAluno) {
        this.idAluno = idAluno;
    }

    public String getRelacaoOutrasCriancas() {
        return relacaoOutrasCriancas;
    }

    public void setRelacaoOutrasCriancas(String relacaoOutrasCriancas) {
        this.relacaoOutrasCriancas = relacaoOutrasCriancas;
    }
    

    public void setDoente(Doente doente) {
        this.doente = doente;
    }

    public String getTemperamento() {
        return temperamento;
    }

    public void setTemperamento(String temperamento) {
        this.temperamento = temperamento;
    }

    public String getComportamento() {
        return comportamento;
    }

    public void setComportamento(String comportamento) {
        this.comportamento = comportamento;
    }

    public String getParticipacaoGrupo() {
        return participacaoGrupo;
    }

    public void setParticipacaoGrupo(String participacaoGrupo) {
        this.participacaoGrupo = participacaoGrupo;
    }

    public String getComeComEducador() {
        return comeComEducador;
    }

    public void setComeComEducador(String comeComEducador) {
        this.comeComEducador = comeComEducador;
    }

    public String getPosicaoNaMesa() {
        return posicaoNaMesa;
    }

    public void setPosicaoNaMesa(String posicaoNaMesa) {
        this.posicaoNaMesa = posicaoNaMesa;
    }

    public String getUsaTalheres() {
        return usaTalheres;
    }

    public void setUsaTalheres(String usaTalheres) {
        this.usaTalheres = usaTalheres;
    }

    public String getHigienePessoal() {
        return higienePessoal;
    }

    public void setHigienePessoal(String higienePessoal) {
        this.higienePessoal = higienePessoal;
    }

    public String getOrganizadoExemplo() {
        return organizadoExemplo;
    }

    public void setOrganizadoExemplo(String organizadoExemplo) {
        this.organizadoExemplo = organizadoExemplo;
    }

    public String getAtencao() {
        return atencao;
    }

    public void setAtencao(String atencao) {
        this.atencao = atencao;
    }

    public String getMemoria() {
        return memoria;
    }

    public void setMemoria(String memoria) {
        this.memoria = memoria;
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

    public String getCoordenacaoMovimentos() {
        return coordenacaoMovimentos;
    }

    public void setCoordenacaoMovimentos(String coordenacaoMovimentos) {
        this.coordenacaoMovimentos = coordenacaoMovimentos;
    }

    public String getDestrezaManual() {
        return destrezaManual;
    }

    public void setDestrezaManual(String destrezaManual) {
        this.destrezaManual = destrezaManual;
    }

    public String getEquilibrioGlobal() {
        return equilibrioGlobal;
    }

    public void setEquilibrioGlobal(String equilibrioGlobal) {
        this.equilibrioGlobal = equilibrioGlobal;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Educador getEducador() {
        return educador;
    }

    public void setEducador(Educador educador) {
        this.educador = educador;
    }

//    public Encarregado getEncarregado() {
//        return encarregado;
//    }
//
//    public void setEncarregado(Encarregado encarregado) {
//        this.encarregado = encarregado;
//    }
    public String getObservacoes() {
        return observacoes;
    }

    public void setObservacoes(String observacoes) {
        this.observacoes = observacoes;
    }

}
