package org.example.services;

import org.example.model.Order;
import org.example.model.Product;
import org.example.repositories.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrderService {
    @Autowired
    OrderRepository repo;

    public List<Order> listByProduct(Product product) {
        return repo.findByProduct(product);
    }
}
