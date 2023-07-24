package com.practice.demo.repo;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.CrudRepository;

import com.practice.demo.pojo.Employee;

public interface Repository extends MongoRepository<Employee, Integer>{

}
