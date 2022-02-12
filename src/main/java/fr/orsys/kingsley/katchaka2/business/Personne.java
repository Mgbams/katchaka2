package fr.orsys.kingsley.katchaka2.business;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

@Entity
public class Personne {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private static final int NB_CREDITS_INITIAL = 500;
	
	@NotNull(message = "Le pseudo ne devrait pas etre null")
	@Pattern(regexp = "^[\\\\p{L} .'-]+$", message = "le pseudo ne comporte que des lettres")
	private String pseudo;
	
	@Length(min = 5, message = "Le mot de passe comporte au moins 5 caractères")
	private String motDePasse;
	
	@Email(regexp = "", message = "L'email doit etre au bon format")
	private String email;
	
	@Past(message = "La date de naissance devrait etre dans le passé")
	private LocalDate dateDeNaissance;
	
	@Length(min = 20, max = 1000, message = "Le bio doit comporter au moins 20 caractères et au max 1000 caractères")
	private String bio;
	
	private int nbCredits;
	private Boolean estFumeur;
	
	@OneToMany(mappedBy = "destinataire")
	private List<Message> messagesRecus;
	
	@OneToMany(mappedBy = "expediteur")
	private List<Message> messagesEnvoyes;
	
	@ManyToOne
	private Ville ville;
	
	@ManyToMany
	private List<Interet> interets;
	
	@NotNull(message = "Le statut ne devrait pas etre null")
	@ManyToOne
	private Statut statut;
	
	@NotNull(message = "Le genre recherché ne devrait pas etre null")
	@ManyToOne
	private Genre genreRecherche;
	
	@NotNull(message = "Le genre ne devrait pas etre null")
	@ManyToOne
	private Genre genre;

	public Personne() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPseudo() {
		return pseudo;
	}

	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public LocalDate getDateDeNaissance() {
		return dateDeNaissance;
	}

	public void setDateDeNaissance(LocalDate dateDeNaissance) {
		this.dateDeNaissance = dateDeNaissance;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public int getNbCredits() {
		return nbCredits;
	}

	public void setNbCredits(int nbCredits) {
		this.nbCredits = nbCredits;
	}

	public Boolean getEstFumeur() {
		return estFumeur;
	}

	public void setEstFumeur(Boolean estFumeur) {
		this.estFumeur = estFumeur;
	}

	public List<Message> getMessagesRecus() {
		return messagesRecus;
	}

	public void setMessagesRecus(List<Message> messagesRecus) {
		this.messagesRecus = messagesRecus;
	}

	public List<Message> getMessagesEnvoyes() {
		return messagesEnvoyes;
	}

	public void setMessagesEnvoyes(List<Message> messagesEnvoyes) {
		this.messagesEnvoyes = messagesEnvoyes;
	}

	public Ville getVille() {
		return ville;
	}

	public void setVille(Ville ville) {
		this.ville = ville;
	}

	public List<Interet> getInterets() {
		return interets;
	}

	public void setInterets(List<Interet> interets) {
		this.interets = interets;
	}

	public Statut getStatut() {
		return statut;
	}

	public void setStatut(Statut statut) {
		this.statut = statut;
	}

	public Genre getGenreRecherche() {
		return genreRecherche;
	}

	public void setGenreRecherche(Genre genreRecherche) {
		this.genreRecherche = genreRecherche;
	}

	public Genre getGenre() {
		return genre;
	}

	public void setGenre(Genre genre) {
		this.genre = genre;
	}

	public static int getNbCreditsInitial() {
		return NB_CREDITS_INITIAL;
	}
	
	
}
