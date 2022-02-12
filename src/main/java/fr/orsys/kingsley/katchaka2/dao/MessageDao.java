package fr.orsys.kingsley.katchaka2.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.orsys.kingsley.katchaka2.business.Message;
import fr.orsys.kingsley.katchaka2.business.Personne;

public interface MessageDao extends JpaRepository<Message, Long> {
	List<Message> findByDestinataireOrderByDateEnvoiDesc(Personne personne);
	
//	 @Query("From Message m"
//	            +"WHERE m.destinataire=:personne"
//	            +"ORDER BY m.dateEnvoi DESC")
//	    List<Message> findMessageBydestinataireDesc(@Param("personne")Personne destinataire);
}
