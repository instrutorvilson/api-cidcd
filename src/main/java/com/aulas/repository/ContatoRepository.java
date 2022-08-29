package com.aulas.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.aulas.entidades.Contato;

@Repository
public interface ContatoRepository extends JpaRepository<Contato, Long> {
    List<Contato> findByEmail(String email);
    
    @Query(value = "", nativeQuery = true)
    List<Contato> findContatosByDataCadastro(Date data);
}
