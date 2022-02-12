package fr.orsys.kingsley.katchaka2.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.orsys.kingsley.katchaka2.business.Genre;

public interface GenreDao extends JpaRepository<Genre, Long> {

}
