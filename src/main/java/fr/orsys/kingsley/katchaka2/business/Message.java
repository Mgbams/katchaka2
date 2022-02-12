package fr.orsys.kingsley.katchaka2.business;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity
public class Message {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String contenu;
	private LocalDateTime dateEnvoi;
	private LocalDateTime dateLecture;
	
	@ManyToOne
	private VieCommune vieCommune;
	
	@ManyToOne
	private Personne expediteur;
	
	@ManyToOne
	private Personne destinataire;

	public Message() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getContenu() {
		return contenu;
	}

	public void setContenu(String contenu) {
		this.contenu = contenu;
	}

	public LocalDateTime getDateEnvoi() {
		return dateEnvoi;
	}

	public void setDateEnvoi(LocalDateTime dateEnvoi) {
		this.dateEnvoi = dateEnvoi;
	}

	public LocalDateTime getDateLecture() {
		return dateLecture;
	}

	public void setDateLecture(LocalDateTime dateLecture) {
		this.dateLecture = dateLecture;
	}

	public VieCommune getVieCommune() {
		return vieCommune;
	}

	public void setVieCommune(VieCommune vieCommune) {
		this.vieCommune = vieCommune;
	}

	public Personne getExpediteur() {
		return expediteur;
	}

	public void setExpediteur(Personne expediteur) {
		this.expediteur = expediteur;
	}

	public Personne getDestinataire() {
		return destinataire;
	}

	public void setDestinataire(Personne destinataire) {
		this.destinataire = destinataire;
	}
	
}
