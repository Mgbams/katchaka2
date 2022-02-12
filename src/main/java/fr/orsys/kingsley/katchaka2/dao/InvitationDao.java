package fr.orsys.kingsley.katchaka2.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.orsys.kingsley.katchaka2.business.Invitation;
import fr.orsys.kingsley.katchaka2.business.Personne;

public interface InvitationDao extends JpaRepository<Invitation, Long> {
	List<Invitation> findByDestinataireAndEstAccepteIsFalse(Personne personne);
}
