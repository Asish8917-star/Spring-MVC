package com.nt.service;

import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.nt.dao.HyderabadDAO;
import com.nt.entity.Hyderabad;

@Service
@Transactional(propagation = Propagation.SUPPORTS,rollbackFor = Exception.class)
public class HyderabadServiceImpl implements HyderabadService {
	@Autowired
	private HyderabadDAO dao;

	public void setDao(HyderabadDAO dao) {
		this.dao = dao;
	}

	@Override
	public Iterable<Hyderabad> getAll() {
		
		return dao.findAll();
	}

	public Hyderabad get(int id) {
		Optional<Hyderabad> result=dao.findById(id);
		return result.get();
	}

	@Override
	public Hyderabad insert(Hyderabad h) {
		
		return dao.save(h);
	}

	@Override
	public Hyderabad update(Hyderabad h) {
		dao.save(h);
		return h;
	}

	@Override
	public void delete(int id) {
		dao.deleteById(id);
	}

	
}
