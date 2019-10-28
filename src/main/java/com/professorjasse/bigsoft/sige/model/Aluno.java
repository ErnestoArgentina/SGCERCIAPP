
import com.professorjasse.bigsoft.sige.model.Educador;
//import com.professorjasse.bigsoft.sige.model.Encarregado;

public class Aluno {

	private int id;

	private Educador educador;

//	private Encarregado encarregado;

	private String observacoes;

    public Aluno() {
    }

    public int getId() {
        return id;
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
