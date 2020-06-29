package service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import entity.Restaurant;
import repository.RestaurantRepository;

@Service
@Transactional(propagation = Propagation.SUPPORTS)
public class RestaurantServiceImpl implements RestaurantService {
	@Autowired
	private RestaurantRepository repo;

	@Override
	public Iterable<Restaurant> getAll() {
		
		return repo.findAll();
	}

	@Override
	public Restaurant get(int id) {
		Optional<Restaurant> result=repo.findById(id);
		return result.get();
	}

	@Override
	public Restaurant create(Restaurant r) {	
		return repo.save(r);
	}

	@Override
	public Restaurant update(Restaurant r) {
		return repo.save(r);
	}

	@Override
	public void delete(int id) {
		repo.deleteById(id);

	}

}
