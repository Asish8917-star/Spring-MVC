package com.nt.controller;

import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.demo.ZXingHelper;
import com.nt.entity.Hyderabad;
import com.nt.service.HyderabadService;

@Controller
public class HyderabadController {
	@Autowired
	private HyderabadService service;
	@GetMapping("/")
	public String getAllElement(ModelMap m) {
		Iterable<Hyderabad> it=service.getAll();
		m.put("hlist", it);
		return "index";
	}
	@GetMapping(value = "qrcode/{id}")
	public void qrcode(@PathVariable("id") String id, HttpServletResponse response) throws Exception {
		response.setContentType("image/png");
		OutputStream outputStream = response.getOutputStream();
		outputStream.write(ZXingHelper.getQRCodeImage(id, 200, 200));
		outputStream.flush();
		outputStream.close();
	}
	@GetMapping("/new")
	public String newContact(ModelMap m) {
		Hyderabad h=new Hyderabad();
		m.put("hyderabad", h);
		return "form";
	}
	@PostMapping("/save")
	public String saveElement(@ModelAttribute("hyderabad") Hyderabad hyd,BindingResult result) {
		if(hyd.getId()==0&&result.hasErrors()) {
			service.insert(hyd);
		}
		else {
			service.update(hyd);
		}
		return "redirect:/";
	}
	@GetMapping("/update")
	public String updateElement(@RequestParam int id,ModelMap m) {
		Hyderabad hyd=service.get(id);
		m.put("hyderabad", hyd);
		return "edit";
	}
	@GetMapping("/delete")
	public String deleteElement(@RequestParam int id) {
		service.delete(id);
		return "redirect:/";
	}

}
