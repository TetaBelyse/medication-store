package com.teta.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import com.teta.demo.model.Drug;
@Component
public interface DrugRepo extends JpaRepository<Drug, Integer> {

}
