package com.nt.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nt.entity.Hyderabad;

@Repository
public interface HyderabadDAO extends JpaRepository<Hyderabad,Integer> {

}
