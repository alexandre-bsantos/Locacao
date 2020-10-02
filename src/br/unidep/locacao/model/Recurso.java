package br.unidep.locacao.model;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Recurso extends AbstractEntityImpl{
	
	private String nome;
	
	@ManyToOne
	@JoinColumn(name = "idcategoria", referencedColumnName = "id", insertable = false, updatable = false)
	private Categoria categoria;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
}
