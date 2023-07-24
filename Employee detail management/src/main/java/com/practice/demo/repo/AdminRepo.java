package com.practice.demo.repo;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.practice.demo.pojo.Admin;

public interface AdminRepo extends MongoRepository<Admin, String>{

}
