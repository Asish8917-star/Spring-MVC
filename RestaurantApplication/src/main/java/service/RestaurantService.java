package service;

import entity.Restaurant;

public interface RestaurantService {
	public Iterable<Restaurant> getAll();
	public Restaurant get(int id);
	public Restaurant create(Restaurant r);
	public Restaurant update(Restaurant r);
	public void delete(int id);

}
