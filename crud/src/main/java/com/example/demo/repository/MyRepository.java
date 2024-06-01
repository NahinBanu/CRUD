package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.MyModel;

public interface MyRepository extends JpaRepository<MyModel, Integer> {

}
