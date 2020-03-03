package org.example.repositories;

import org.example.model.Order;
import org.example.model.Product;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface OrderRepository extends CrudRepository<Order, Integer> {
    List<Order> findByProduct(Product product);
}
