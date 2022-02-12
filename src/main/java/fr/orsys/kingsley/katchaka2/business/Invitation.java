package fr.orsys.kingsley.katchaka2.business;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Invitation {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private LocalDateTime dateEnvoi;
	private LocalDateTime dateLecture;
	private Boolean estAccepte;
	
	@OneToOne
	private VieCommune vieCommune;
	
	@ManyToOne
	private Personne destinataire;
	
	@ManyToOne
	private Personne expediteur;

	public Invitation() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public Boolean getEstAccepte() {
		return estAccepte;
	}

	public void setEstAccepte(Boolean estAccepte) {
		this.estAccepte = estAccepte;
	}

	public VieCommune getVieCommune() {
		return vieCommune;
	}

	public void setVieCommune(VieCommune vieCommune) {
		this.vieCommune = vieCommune;
	}

	public Personne getDestinataire() {
		return destinataire;
	}

	public void setDestinataire(Personne destinataire) {
		this.destinataire = destinataire;
	}

	public Personne getExpediteur() {
		return expediteur;
	}

	public void setExpediteur(Personne expediteur) {
		this.expediteur = expediteur;
	}
	
	
}
