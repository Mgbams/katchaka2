package fr.orsys.kingsley.katchaka2.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.orsys.kingsley.katchaka2.business.Ville; 

public interface VilleDao extends JpaRepository<Ville, Long> {
	
	//donner les villes où il n’y a pas d’inscrits
	public List<Ville> findByPersonnesIsEmpty();
}
