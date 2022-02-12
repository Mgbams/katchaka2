package fr.orsys.kingsley.katchaka2.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fr.orsys.kingsley.katchaka2.business.Genre;
import fr.orsys.kingsley.katchaka2.business.Interet;
import fr.orsys.kingsley.katchaka2.business.Personne;
import fr.orsys.kingsley.katchaka2.business.Statut;
import fr.orsys.kingsley.katchaka2.business.Ville;

public interface PersonneDao extends JpaRepository<Personne, Long> {
	 //@Query("FROM Personne p WHERE p.ville=:ville")
	   // List<Personne> findByVille(@Param("ville") Ville ville);
	
	 // Par dérivation
    List<Personne> findByVille(Ville ville);
    
    // Par dérivation
    List<Personne> findByVilleNom(String nom); 
    
	List<Personne> findByDateDeNaissanceBetween(LocalDate dateDebut, LocalDate dateFin);
	List<Personne> findByStatutAndGenreAndVille(Statut statut, Genre genre, Ville ville);
	
	//lister les femmes célibataires de Lyon et Grenoble
	@Query("FROM Personne p " 
			+ "WHERE p.statut.nom = 'celibataire' "
			+ "AND p.genre.nom = 'femme'"
			+ "AND p.ville.nom IN ('lyon', 'grenoble')")
		List<Personne> findFemmeCelibataireALyonEtAGrenoble();
	
	@Query(value = "from Personne p order by p.interets.size DESC")
	List<Personne> findNbPersonneBySizeInterets();
	
	  List<Personne> findByVilleInAndGenreAndStatutAndDateDeNaissanceBetweenAndInteretsContains(List<Ville> villes, Genre genre, Statut statut, LocalDate dateDebut,  LocalDate dateFin, Interet interet);
	  
	  List<Personne> findByDateDeNaissanceGreaterThanAndPseudoStartingWith(LocalDate date, String debutDePseudo);
	  
	  //@Query(name="from Personne where DATEDIFF(year,dateDeNaissance,now()) >= 30 and pseudo like ':debutPseudo%'", nativeQuery=true)
	  // List<Personne> findPersonnesWhereAgeGreaterThan30();
}
