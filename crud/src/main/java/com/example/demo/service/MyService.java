package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.model.MyModel;
import com.example.demo.repository.MyRepository;

@Component
public class MyService {
	@Autowired
    private MyRepository repo;
	public void save(MyModel m) {
		repo.save(m);
	}
	public List<MyModel> read() {
		List<MyModel> findAll = repo.findAll();
		return findAll;	
	}
   /* private void edit() {
    	List<MyModel> findAll = repo.findAll();
    	repo.saveAll(null);
   } 	
*/
	public void delete(int id) {
		repo.deleteById(id);
	}
	public void update(MyModel mymodel) {
		System.out.println(mymodel);
   MyModel update=repo.findById(mymodel.getId()).orElse(null);
   System.out.println(update);
   update.setName(mymodel.getName());
   update.setPassword(mymodel.getPassword());
   update.setAge(mymodel.getAge());
   update.setLocation(mymodel.getLocation());
   repo.save(update);
   
	}
	public MyModel edit(int id) {
		MyModel edit = repo.findById(id).orElse(null);
		return edit;
		
	}
	}
	
