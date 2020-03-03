package org.example.services;

import org.example.model.Product;
import org.example.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductService {
    @Autowired
    ProductRepository repo;

    public List<Product> listAll() {
        return (List<Product>) repo.findAll();
    }

    public Product get(Integer id) {
        return repo.findById(id).orElse(null);
    }

    public List<Product> search(String keyword) {
        return repo.search(keyword);
    }
}
