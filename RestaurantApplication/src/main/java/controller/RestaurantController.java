package controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Restaurant;
import service.RestaurantService;

@Controller
@RequestMapping(value = "/")
public class RestaurantController {
	@Autowired
	private RestaurantService service;
	@GetMapping("/getall")
	public String getAll(ModelMap m) {
		Iterable<Restaurant> it=service.getAll();
		m.put("rlist", it);
		return "index";
	}
	@GetMapping("/new")
	public String create(ModelMap m) {
		Restaurant r=new Restaurant();
		m.put("rest", r);
		return "create_new";
	}
	@PostMapping("/save")
	public String save(@ModelAttribute("rest") Restaurant rest,BindingResult result) {
		if(result.hasErrors()) {
			service.create(rest);
		}
		else {
			service.update(rest);
		}
		return "redirect:/getall";
	}
	@GetMapping("/update")
	public String update(@RequestParam int id,ModelMap m) {
		Restaurant result=service.get(id);
		m.put("rest", result);
		return "update";
	}
	@GetMapping("/delete")
	public String delete(@RequestParam int id) {
		service.delete(id);
		return "redirect:/getall";
	}

}
