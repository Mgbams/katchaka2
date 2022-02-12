package fr.orsys.kingsley.katchaka2.business;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


@Entity
public class VieCommune {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private static final int NB_CREDITS_PAR_DEFAULT = 500;
	private LocalDate dateDebut;
	private LocalDate dateFin;
	private int nbCredits;
	
	@OneToMany(mappedBy = "vieCommune")
	private List<Message> messages; // Redundant
	
	@OneToOne
	private Invitation invitation;

	public VieCommune() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public LocalDate getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(LocalDate dateDebut) {
		this.dateDebut = dateDebut;
	}

	public LocalDate getDateFin() {
		return dateFin;
	}

	public void setDateFin(LocalDate dateFin) {
		this.dateFin = dateFin;
	}

	public int getNbCredits() {
		return nbCredits;
	}

	public void setNbCredits(int nbCredits) {
		this.nbCredits = nbCredits;
	}

	public List<Message> getMessages() {
		return messages;
	}

	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}

	public Invitation getInvitation() {
		return invitation;
	}

	public void setInvitation(Invitation invitation) {
		this.invitation = invitation;
	}

	public static int getNbCreditsParDefault() {
		return NB_CREDITS_PAR_DEFAULT;
	}
	
}
