package br.com.ps13si.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.ps13si.model.BootcampModel;

public interface BootcampRepository extends JpaRepository<BootcampModel, Long> {

}
