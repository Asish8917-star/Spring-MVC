package com.nt.service;

import java.util.Optional;

import com.nt.entity.Hyderabad;
public interface HyderabadService {
	public Iterable<Hyderabad> getAll();
	public Hyderabad insert(Hyderabad h);
	public Hyderabad update(Hyderabad h);
	public void delete(int id);
	public Hyderabad get(int id);

}
